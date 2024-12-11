

// #include "distinctness.h"
#include <stdlib.h>
// #include "../../Shared/shared.h"
#include <limits>



// #include "../config.h"
#include <stdio.h>
#include <string.h>
#include <chrono>
#include <iostream>
#include <fstream>
#include <vector>
#include <perf.h>
#include <perfmon/pfmlib_perf_event.h>
#include <perf_util.h>
#include <map>
#include <sstream>
#include <iomanip>

using namespace std;


profiling_context_t *ctx;
const int total_events = 21;
const char *gen_events__[] = {
    "cycles:u", "LLC_REFERENCES:u", "LLC_MISSES:u",
    "BRANCH_INSTRUCTIONS_RETIRED", "MISPREDICTED_BRANCH_RETIRED", "PERF_COUNT_HW_INSTRUCTIONS",
    "CACHE-REFERENCES", "PERF_COUNT_HW_CACHE_MISSES", "BRANCH-INSTRUCTIONS",
    "PERF_COUNT_HW_BRANCH_MISSES", "L1-DCACHE-LOAD-MISSES", "L1-DCACHE-LOADS",
    "L1-DCACHE-STORES", "L1-ICACHE-LOAD-MISSES", "l1d.replacement",
    "LLC-LOADS", "LLC-LOAD-MISSES", "LLC-STORES",
    "cycles:u", "LLC_REFERENCES:u", "LLC_MISSES:u",
    NULL  // Marks the end of the events array
};

// int __attribute__((always_inline))  CMOV(bool cond, int v_true, int v_false);
inline int __attribute__((always_inline))  CMOV(bool cond, int v_true, int v_false) {
                int result;
                __asm__ __volatile__ (
                    "test   %1, %1;"
                    "cmovz  %3, %0;"  //zero flag cleared?
                    "cmovnz %2, %0;" //zero flag not cleared?
                    : "=r" (result)
                    : "r" (cond), "r" (v_true), "r" (v_false)
                    : "cc"
                );
                return result;
}

#define VIP_CMOV(P,A,B)    CMOV((P), (A), (B))
#define MAX std::numeric_limits<int>::max() 

bool isDistinct(int *array,size_t arr_size)
{
  bool dup = false;

  for (int i=arr_size-1; i >= 0; i--)
  {
    for (int j=0; j < arr_size; j++){
	  bool cond = ((array[i] == array[j]) & (i!=j)); 	
      dup = VIP_CMOV(cond, array[j], dup);
	}
  }
  return !dup;
}

map<string, string> parseArgs(int argc, char **argv) {
    map<string, string> args;

    for (int i = 1; i < argc; ++i) {
        string arg = argv[i];

        // Check if argument is a named argument starting with "--"
        if (arg.rfind("--", 0) == 0 && i + 1 < argc) {
            string key = arg.substr(2); // Remove "--" prefix
            args[key] = argv[++i];      // Assign the next element as the value
        } else {
            cerr << "Error: Missing value for argument " << arg << endl;
            exit(1);
        }
    }

    if (args.find("output") == args.end()) {
        cerr << "Error: Missing required argument --output\n";
        exit(1);
    }

    return args;
}

void runDistinct(int* data, int data_len,  const char *events[], ofstream &file) {

    ctx = init_profile(0, events);
    start_profile(ctx);

    auto start = chrono::high_resolution_clock::now();
    // Encrypt
    
    bool ret = isDistinct(data,data_len);
    auto end = chrono::high_resolution_clock::now();

    pref_result_t *res = stop_profile2(ctx);

    // Log profiling results
    for (int i = 0; i < ctx->num_fds; i++) {
        file << res[i].name << ":" << res[i].result << "\n";
    }

    auto duration = chrono::duration_cast<chrono::nanoseconds>(end - start).count();
    file << "encryption_time:" << duration << "\n";

}


int main(int argc, char **argv) {
    int ret = pfm_initialize();
    if (ret != PFM_SUCCESS) {
        cerr << "Cannot initialize library: " << pfm_strerror(ret) << endl;
        return 1;
    }

    if (argc < 5) {
        cerr << "Error: Arguments less than 4.\n";
        std::cerr << "Usage: ./main --output <output_file> --input <encrypted_file>\n"
                << "\n"
                << "Options:\n"
                << "  --output <output_file>            Path to the output file where results will be saved.\n"
                << "  --input <encrypted_file>          Path to the input encrypted file (e.g., ./path_to_directory/encrypted_1).\n"
                << "\n"
                << "Description:\n"
                << "  This command runs the application with specified keys and files. The public and private key files are used\n"
                << "  to decrypt or process the input encrypted file, and the result is saved in the output file.\n";

        return 1;
    }

    map<string, string> args = parseArgs(argc, argv);
    string input_file_name   = args["input"];       //argv[3];
    string output_file_name  = args["output"];      //argv[4];




     //Create a dynamic array to hold the values
	vector<int> numbers;    
	ifstream in(input_file_name,ios::in);	
    int number;  //Variable to hold each number as it is read
    while (in >> number) {
		numbers.push_back(number);
	}
    in.close();

    
    ofstream file(output_file_name, ios::out | ios::trunc);
    if (!file) {
        cerr << "Error opening output file: " << output_file_name << endl;
        return 1;
    }
    int size = total_events;


    // Encrypt with profiling for each group of 3 events
    for (int i = 0; i < size - 2; i += 3) {
        vector<const char*> events = {gen_events__[i], gen_events__[i+1], gen_events__[i+2], NULL};
        runDistinct(&numbers[0], numbers.size(), events.data(), file);
    }

    // Handle remaining events if not multiple of 3
    if (size % 3 != 0) {
        int remaining = size % 3;
        vector<const char*> events(remaining + 1);
        for (int i = 0; i < remaining; ++i) {
            events[i] = gen_events__[size - remaining + i];
        }
        events[remaining] = NULL;
        runDistinct(&numbers[0], numbers.size(), events.data(), file);
    }

    

    file.close();

    return 0;
}



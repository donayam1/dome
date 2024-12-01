#include <sys/types.h>
#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <signal.h>
#include <locale.h>
#include <sys/prctl.h>
#include <err.h>
#include <perfmon/pfmlib_perf_event.h>
#include <perf_util.h>
#include "perf.h"
#include <errno.h>


// const char *gen_events__[]={
// 	    "cycles:u", // CYCLES 
//         "PERF_COUNT_HW_CACHE_REFERENCES",
//         "CACHE-MISSES",
//         "instructions:u",
//         "L1-DCACHE-LOADS:u",
//         "L1-DCACHE-LOAD-MISSES:u",
//         "L1-DCACHE-PREFETCHES:u",
//         "CORE_TO_L2_CACHEABLE_REQUEST_ACCESS_STATUS:0xF0:u", //COR_L2_REQ_ALL --- L2-LOAD-PLUS-STORE-HIT
//         "CORE_TO_L2_CACHEABLE_REQUEST_ACCESS_STATUS:0xE0:u",  // LOAD  --- L2-LOAD-HIT
//         "CORE_TO_L2_CACHEABLE_REQUEST_ACCESS_STATUS:0x10:u", // Store  --- L2-STORE-HIT
        

//         "L2_PREFETCH_HIT_L2:0xFF:u",
//         "L2_PREFETCH_HIT_L3:0xFF:u",
//         "L2_PREFETCH_MISS_L3:0xFF:u",
//         "DEMAND_DATA_CACHE_FILLS_FROM_SYSTEM:0xFF:u", //L2->CORE --- DEMAND-L1-MISSS     
//         "DEMAND_DATA_CACHE_FILLS_FROM_SYSTEM:0xDE:u", //L3 or LC in the same CCX(LOCAL_CCX) -> CORE = APP --- DEMAND-L2-MISSES

//         "CORE_TO_L2_CACHEABLE_REQUEST_ACCESS_STATUS:0x08:u", //(Number of data cache requests missing in the L2 (all types))--- L2-MISS 

//         "DEMAND_DATA_CACHE_FILLS_FROM_SYSTEM:0xDC:u", // --- DEMAND-L3-MISSES 

//         "ANY_DATA_CACHE_FILLS_FROM_SYSTEM:0xFF:u", //L2->CORE ---- ANY-L1-MISSES 
//         "ANY_DATA_CACHE_FILLS_FROM_SYSTEM:0xDE:u", //L3 or LC in the same CCX(LOCAL_CCX) -> CORE --- ANY-L2-MISS 
//         "ANY_DATA_CACHE_FILLS_FROM_SYSTEM:0xDC:u", //---- ANY-L3 MISS
//         "REQUESTS_TO_L2_GROUP1:0xE0", //All L2 cache requests ---- L2--SHARED-LOAD-STORE-REQ
//         "REQUESTS_TO_L2_GROUP1:0x02", //All L2 PREFETCH requests ---- L2-PREFETCH-REQ
//         NULL

// };


// const char *gen_events__[]={
// 	    // "cycles:u", // CYCLES 
//         // "LLC_REFERENCES:u",
//         // "LLC_MISSES:u",
//         // "BRANCH_INSTRUCTIONS_RETIRED:u",
//         // "MISPREDICTED_BRANCH_RETIRED:u",
//         // "PERF_COUNT_HW_INSTRUCTIONS:u",
//         // "CACHE-REFERENCES:u",
//         // "PERF_COUNT_HW_CACHE_MISSES:u",
//         // "BRANCH-INSTRUCTIONS:u",
//         // "PERF_COUNT_HW_BRANCH_MISSES:u",
//         // "L1-DCACHE-LOAD-MISSES:u",
//         // "L1-DCACHE-LOADS:u",
//         // "L1-DCACHE-STORES:u",x
        
//         "L1-ICACHE-LOAD-MISSES:u",
//         "l1d.replacement",
//         "LLC-LOADS:u",
//         "LLC-LOAD-MISSES:u",
//         "LLC-STORES:u",
//         "LLC-STORE-MISSES:u",
//         "INSTRUCTION_RETIRED:u",

//          NULL

// };

// "L1-DCACHE-STORE-MISSES:u",
// "L1-DCACHE-PREFETCHES:u",
// "L1-DCACHE-PREFETCH-MISSES:u",
// "L1-ICACHE-LOADS:u",
// "L1-ICACHE-PREFETCHES:u",
// "L1-ICACHE-PREFETCH-MISSES:u",
// "LLC-PREFETCHES",
// "LLC-PREFETCH-MISSES",

pid_t
gettid(void)
{
	return (pid_t)syscall(__NR_gettid);
}

// // Assume sig_handler remains the same
// void noploop(void)
// {
//     volatile int quit = 0;
//     while (!quit)
//         ;
// }
// uint64_t* read_counts(profiling_context_t *ctx)
// {
//     // Implementation remains mostly the same, using ctx->fds and ctx->num_fds
//     uint64_t* results =  (uint64_t*)malloc(num_fds * sizeof(uint64_t));  //uint64_t[num_fds];
//     uint64_t values[3];
//     int i;
//     ssize_t ret;
//     memset(values, 0, sizeof(values));

// 	for (i = 0; i < num_fds; i++) {

// 		ret = read(fds[i].fd, values, sizeof(values));
// 		if (ret < (ssize_t)sizeof(values)) {
// 			if (ret == -1)
// 				err(1, "cannot read results: %s", strerror(errno));
// 			else
// 				warnx("could not read event%d", i);
// 		}
//         results[i] = values[2];
	
// 	}
//     return results;

// }
profiling_context_t *init_profile(int is_thread, const char**events)
{
    profiling_context_t *ctx = (profiling_context_t *)malloc(sizeof(profiling_context_t));
    if (!ctx)
    {
        perror("Failed to allocate profiling context");
        exit(EXIT_FAILURE);
    }
    ctx->fds = NULL;
    ctx->num_fds = 0;
    setlocale(LC_ALL, "");
    int ret;
    //  = pfm_initialize();
    // if (ret != PFM_SUCCESS)
    // {
    //     errx(1, "Cannot initialize library: %s", pfm_strerror(ret));
    // }
    // int i=0;
    // while(gen_events__[i] != NULL){
    //     printf("%s,",gen_events__[i]);
    //     i++;
    // }
    //  printf("\n");
    ret = perf_setup_argv_events(events, &ctx->fds, &ctx->num_fds);
    if (ret || !ctx->num_fds)
    {
        errx(1, "cannot setup events %s",pfm_strerror(ret));
    }
    ctx->fds[0].fd = -1;
    for (int i = 0; i < ctx->num_fds; i++)
    {
        ctx->fds[i].hw.read_format = PERF_FORMAT_SCALE;
        ctx->fds[i].hw.disabled = 1;
        if(is_thread == 1){
            ctx->fds[i].fd = perf_event_open(&ctx->fds[i].hw, gettid(), -1, -1, 0);
        }else{
            ctx->fds[i].fd = perf_event_open(&ctx->fds[i].hw, 0, -1, -1, 0);
        }
        if (ctx->fds[i].fd == -1)
        {
            err(1, "cannot open event %d", i);
        }
    }
    return ctx;
}
void start_profile(profiling_context_t *ctx)
{ 
    /*
	 * enable all counters attached to this thread and created by it
	 */
	int ret = prctl(PR_TASK_PERF_EVENTS_ENABLE);
	if (ret)
		err(1, "prctl(enable) failed");

    // // Assuming tid is the thread ID. For the process-wide, use 0.
    // for (int i = 0; i < ctx->num_fds; i++)
    // {
    //     if (ioctl(ctx->fds[i].fd, PERF_EVENT_IOC_ENABLE, 0) == -1)
    //     {
    //         err(1, "ioctl(enable) failed");
    //     }
    // }
}

pref_result_t *stop_profile2(profiling_context_t *ctx)
{
    // uint64_t val;
	uint64_t values[3];
	// double ratio;

    ssize_t ret; 
    pref_result_t* results =  (pref_result_t*)malloc(ctx->num_fds * sizeof(pref_result_t));  //uint64_t[num_fds];
    memset(results,0,ctx->num_fds*sizeof(uint64_t));
    memset(values, 0, sizeof(values));

    for (int i = 0; i < ctx->num_fds; i++)
    {
       
        ret = read(ctx->fds[i].fd, values, sizeof(values));
		if (ret < (ssize_t)sizeof(values)) {
			if (ret == -1)
				err(1, "cannot read results: %s", strerror(errno));
			else
				warnx("could not read event%d", i);
		}
        // val = perf_scale(values);
		// ratio = perf_scale_ratio(values);
        

        results[i].result = values[0];// val;
        results[i].name = ctx->fds[i].name;
        // if (ioctl(ctx->fds[i].fd, PERF_EVENT_IOC_DISABLE, 0) == -1)
        // {
        //     err(1, "ioctl(disable) failed");
        // }
        // close(ctx->fds[i].fd);
    }
    /*
	 * disable all counters attached to this thread
	 */
	ret = prctl(PR_TASK_PERF_EVENTS_DISABLE);
	if (ret)
		err(1, "prctl(disable) failed");
    for (int i = 0; i < ctx->num_fds; i++)
	  close(ctx->fds[i].fd);
    // perf_free_fds(ctx->fds, ctx->num_fds);
    // pfm_terminate();
    // free(ctx);


    return results;
}

// uint64_t *stop_profile(profiling_context_t *ctx)
// {
//     // uint64_t val;
// 	uint64_t values[3];
// 	// double ratio;

//     ssize_t ret; 
//     uint64_t* results =  (uint64_t*)malloc(ctx->num_fds * sizeof(uint64_t));  //uint64_t[num_fds];
//     memset(results,0,ctx->num_fds*sizeof(uint64_t));
//     memset(values, 0, sizeof(values));

//     for (int i = 0; i < ctx->num_fds; i++)
//     {
       
//         ret = read(ctx->fds[i].fd, values, sizeof(values));
// 		if (ret < (ssize_t)sizeof(values)) {
// 			if (ret == -1)
// 				err(1, "cannot read results: %s", strerror(errno));
// 			else
// 				warnx("could not read event%d", i);
// 		}
//         // val = perf_scale(values);
// 		// ratio = perf_scale_ratio(values);
//         // printf("%s %'20"PRIu64" %s (%.2f%% scaling, raw=%'"PRIu64", ena=%'"PRIu64", run=%'"PRIu64")\n",			
//         //     "hi",
// 		// 	val,
// 		// 	ctx->fds[i].name,
// 		// 	(1.0-ratio)*100.0,
// 		//         values[0],
// 		// 	values[1],
// 		// 	values[2]);

//         results[i] = values[0];// val;
//         // if (ioctl(ctx->fds[i].fd, PERF_EVENT_IOC_DISABLE, 0) == -1)
//         // {
//         //     err(1, "ioctl(disable) failed");
//         // }
//         // close(ctx->fds[i].fd);
//     }
//     /*
// 	 * disable all counters attached to this thread
// 	 */
// 	ret = prctl(PR_TASK_PERF_EVENTS_DISABLE);
// 	if (ret)
// 		err(1, "prctl(disable) failed");
//     for (int i = 0; i < ctx->num_fds; i++)
// 	  close(ctx->fds[i].fd);
//     // perf_free_fds(ctx->fds, ctx->num_fds);
//     // pfm_terminate();
//     // free(ctx);


//     return results;
// }

void init_prfiler_lib(){
    int ret = pfm_initialize();
    if (ret != PFM_SUCCESS)
    {
        errx(1, "Cannot initialize library: %s", pfm_strerror(ret));
    }
}
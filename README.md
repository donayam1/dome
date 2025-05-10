# DOME


**DOME** (Data Oblivious Mitigation Evaluation) is a research framework for evaluating the effectiveness of full-system side-channel mitigations. It uses machine learning techniques to identify secret inputs that may leak information and supports researchers in validating and strengthening data-oblivious execution strategies.

This framework was published under the title:
DOME: Automated Validation of Data-Oblivious Program Execution
Donayam Benti and Todd Austin 

## Features
- Identifies side-channel vulnerabilities by analyzing execution traces
- Designed for full-system evaluation (Hardware, software, and compiler) 

## Getting Started

### Prerequisites

- Python 3.8+
- pip (Python package manager)
- Dependencies listed in `requirements.txt`

### Installation

```bash
git clone https://github.com/donayam1/dome.git
cd dome
pip install -r requirements.txt
```

## Testing Your Own Application with DOME

To evaluate your own algorithm or library using DOME, follow these steps. This guide shows how to integrate your C++ code, generate input secrets, connect to DOME’s profiler, and run the full analysis pipeline.

---

### 1. Set Up Project Structure

Inside the `dome/` directory, create a folder for your project. Within that, create a subfolder for the specific algorithm or application you want to test.

```
dome/
└── your_project/
    └── your_algorithm/
        ├── main.cpp
        ├── Makefile
        ├── datagen.py
        └── run2.py
```

---

### 2. Implement `main.cpp`

In main.cpp, implement the main function for your C++ application. It should:

- Accept at least two command-line arguments: the input file path and the output file path. You may add additional arguments as needed—this will require corresponding changes in run2.py; see Section 5 for details.

- Read secret input values from the input file

- Write the profiling results to the output file

This program will be called by DOME during profiling.

---

### 3. Create a Makefile

Write a `Makefile` to build your `main.cpp` into an executable.

Use the following format as given in one of the example projects:

Run the following command to compile:

```bash
make
```

---

### 4. Create `datagen.py`

This script should generate secret inputs. It must define a function with the same signature as the examples in other `datagen.py` files.

Register your function in `data_processing/helper.py`:

```python
data_gen = {
    "your_library": {"your_application":your_datagen_function},
    # other entries...
}
```

---

### 5. Modify `run2.py`

Use the provided `run2.py` template.

- Locate the `run_experiment` function
- Modify the `for` loop at **line 113**
- Update it to:
  - Read the appropriate input files
  - Call your C++ executable using `subprocess`
  - Pass input/output file names as arguments

---

### 6. Use DOME’s Built-in Profiler (Optional)

To enable performance profiling:

1. Specify events you want to track
2. Use the provided interface:

```cpp
start_profiling();
// your code here
stop_profiling();

```

See the examples in DOME for exact usage.

---

### 7. Run the Analysis

Go to the `data_processing/` directory and run:

```bash
python auto2.py --lib your_library --app your_algorithm --rounds max_rounds --fast 1 
```

Use `--help` to see available arguments.

---

### 8. (Optional) Profiling External Libraries

If you want to profile a third-party library:

1. Place the library in the `libs/` folder
2. Write a `main.cpp` that:
   - Calls the target library function
   - Uses input/output files
   - Uses the profiling interface
3. Follow the previous steps to build and integrate

---

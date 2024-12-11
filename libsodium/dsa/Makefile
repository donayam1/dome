# Compiler and Flags
CXX = g++
CXX_FLAGS = -std=c++17 -O3 -g -Wall -Wextra -no-pie -Wl,-E -rdynamic
LDFLAGS = -no-pie -Wl,-E

# Include Paths and Libraries

# Perf tool paths
LIBS_PATH = /home/donayam/Documents/dove_workspace/libs
PERF_TOOL_PATH = $(LIBS_PATH)/libpfm4
PERF_INCLUDE = -I$(PERF_TOOL_PATH)/perf_examples -I$(PERF_TOOL_PATH)/include -I$(LIBS_PATH)/perf_tool
PERF_LIB = -L$(PERF_TOOL_PATH)/lib -lpfm
CXX_FLAGS += $(PERF_INCLUDE)
LDFLAGS += $(PERF_LIB)

# Libsodium paths
LIBSODIUM_INCLUDE = -I$(LIBS_PATH)/libsodium-1.0.20/build/include
LIBSODIUM_LIB = -L$(LIBS_PATH)/libsodium-1.0.20/build/lib -lsodium

CXX_FLAGS += $(LIBSODIUM_INCLUDE)
LDFLAGS += $(LIBSODIUM_LIB)

# Targets
SUITE = main datagen
.PHONY: all clean run

# Default target
all: $(SUITE)

# Datagen target
datagen:
	$(CXX) datagen.cpp -o datagen -std=c++17 $(CXX_FLAGS) $(LDFLAGS)

# Main application
main:
	$(CXX) $(CXX_FLAGS) main.cpp \
		$(PERF_TOOL_PATH)/perf_examples/perf_util.c $(LIBS_PATH)/perf_tool/perf.c \
		-o main $(LDFLAGS)

# Run target
run:
	./main

# Clean target
clean:
	rm -f $(SUITE)

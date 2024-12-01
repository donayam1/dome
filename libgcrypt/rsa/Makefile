# Compiler and Flags
CXX = g++
CXX_FLAGS = -std=c++17 -O3 -g -Wall -Wextra -no-pie -Wl,-E -rdynamic
LDFLAGS = -no-pie -Wl,-E



# Enable GEM5 or use Perf by default
ifeq ($(ENABLE_GEM5), 1)
	# Optional GEM5 paths
	M5OPS_HEADER_PATH=/home/ubuntu/gem5/include
	M5_BUILD_PATH=/home/ubuntu/gem5/util/m5/build/x86
    CXX_FLAGS += -I$(M5OPS_HEADER_PATH) -I$(M5OPS_HEADER_PATH)/../util/m5/src
    CXX_FLAGS += -DENABLE_GEM5=1
    LDFLAGS += -lm5 -L$(M5_BUILD_PATH)/out/
    LDFLAGS += -DENABLE_GEM5=1
	LIBGCRYPT_PATH = /home/ubuntu/my-libgcrypt/build
else
	LIBS_PATH = /home/donayam/Documents/dove_workspace/libs
    PERF_TOOL_PATH = $(LIBS_PATH)/libpfm4
    PERF_INCLUDE = -I$(PERF_TOOL_PATH)/perf_examples -I$(PERF_TOOL_PATH)/include -I$(LIBS_PATH)/perf_tool
    PERF_LIB = -L$(PERF_TOOL_PATH)/lib -lpfm
    CXX_FLAGS += $(PERF_INCLUDE)
    LDFLAGS += $(PERF_LIB)
	LIBGCRYPT_PATH =/home/donayam/Documents/dove_workspace/libs/libgcrypt-1.8.11/build
endif

# General Libraries

LIBGCRYPT_INCLUDE = -I$(LIBGCRYPT_PATH)/include
LIBGCRYPT_LIB = -L$(LIBGCRYPT_PATH)/lib -lgcrypt

CXX_FLAGS += $(LIBGCRYPT_INCLUDE)
LDFLAGS += $(LIBGCRYPT_LIB)

# Targets
SUITE = main datagen bitcount key_format_conv
.PHONY: all clean run

# Default target
all: $(SUITE)

# Main application
main:
ifeq ($(ENABLE_GEM5), 1)
	$(CXX) $(CXX_FLAGS) main_gem5.cpp -o main $(LDFLAGS)
else
	$(CXX) $(CXX_FLAGS) main.cpp \
		$(PERF_TOOL_PATH)/perf_examples/perf_util.c $(LIBS_PATH)/perf_tool/perf.c \
		-o main $(LDFLAGS)
endif

# Datagen target
datagen:
	$(CXX) datagen.cpp -o datagen -std=c++17 $(CXX_FLAGS) $(LDFLAGS)

# Bitcount target
bitcount:
	$(CXX) bitcount.cpp -o bitcount -std=c++17 $(CXX_FLAGS) $(LDFLAGS)

# Key Format Conversion
key_format_conv:
	$(CXX) key_format_conv.cpp -o key_format_conv -std=c++11 $(CXX_FLAGS) $(LDFLAGS)

# Run target
run:
	export LD_LIBRARY_PATH=$(LIBGCRYPT_PATH)/lib:$$LD_LIBRARY_PATH && ./main

# Clean target
clean:
	rm -f $(SUITE)

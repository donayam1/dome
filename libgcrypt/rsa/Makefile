# Compiler and Flags
CXX = g++
CXX_FLAGS = -std=c++17 -O3 -g -Wall -Wextra -no-pie -Wl,-E -rdynamic
LDFLAGS = -no-pie -Wl,-E




LIBS_PATH = /home/donayam/Documents/dove_workspace/libs
PERF_TOOL_PATH = $(LIBS_PATH)/libpfm4
PERF_INCLUDE = -I$(PERF_TOOL_PATH)/perf_examples -I$(PERF_TOOL_PATH)/include -I$(LIBS_PATH)/perf_tool
PERF_LIB = -L$(PERF_TOOL_PATH)/lib -lpfm
CXX_FLAGS += $(PERF_INCLUDE)
LDFLAGS += $(PERF_LIB)
LIBGCRYPT_PATH =/home/donayam/Documents/dove_workspace/libs/libgcrypt-1.8.11/build


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
	$(CXX) $(CXX_FLAGS) main.cpp \
		$(PERF_TOOL_PATH)/perf_examples/perf_util.c $(LIBS_PATH)/perf_tool/perf.c \
		-o main $(LDFLAGS)

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

# default:
# 	g++  -Wall -Wextra main.cpp ../libpfm4/perf_examples/perf_util.c ../perf_tool/perf.c -lssl -lcrypto -lpfm -L../libpfm4/lib  -I../libpfm4/perf_examples -I../libpfm4/include -o main

# data:
# 	g++ -std=c++17 -Wall -Wextra datagen.cpp  -lssl -lcrypto   -o datagen

# run:
# 	sudo LD_LIBRARY_PATH=/home/donayam/Documents/openssl_exp/libpfm4/lib ./main --private_key "private_key.pem" --public_key "public_key.pem" --input "data/input.txt" --output "result.txt" 

# clean:
# 	rm main

# Compiler and Flags
CXX = g++
CXX_FLAGS = -std=c++17 -O3 -g -Wall -Wextra -no-pie -Wl,-E -rdynamic
LDFLAGS = -no-pie -Wl,-E

# Include Paths and Libraries

# Perf tool paths
LIBS_PATH=/home/donayam/Documents/dove_workspace/libs
PERF_TOOL_PATH = $(LIBS_PATH)/libpfm4
PERF_INCLUDE = -I$(PERF_TOOL_PATH)/perf_examples -I$(PERF_TOOL_PATH)/include -I$(LIBS_PATH)/perf_tool
PERF_LIB = -L$(PERF_TOOL_PATH)/lib -lpfm

CXX_FLAGS += $(PERF_INCLUDE)
LDFLAGS += $(PERF_LIB)

# OpenSSL Include and Lib Paths
OPENSSL_INCLUDE =#-I/usr/include/openssl
OPENSSL_LIB = -L/usr/lib -lssl -lcrypto

CXX_FLAGS += $(OPENSSL_INCLUDE)
LDFLAGS += $(OPENSSL_LIB)

# Targets
SUITE = main #datagen bitcount #key_format_conv
.PHONY: all clean run

# Default target
all: $(SUITE)

# Main application
main:
	$(CXX) $(CXX_FLAGS) main.cpp \
		$(PERF_TOOL_PATH)/perf_examples/perf_util.c $(LIBS_PATH)/perf_tool/perf.c \
		-o main $(LDFLAGS)

# # Datagen target
# datagen:
# 	$(CXX) datagen.cpp -o datagen $(CXX_FLAGS) $(LDFLAGS)

# # Bitcount target
# bitcount:
# 	$(CXX) bitcount.cpp -o bitcount $(CXX_FLAGS) $(LDFLAGS)

# # Key Format Conversion
# key_format_conv:
# 	$(CXX) key_format_conv.cpp -o key_format_conv $(CXX_FLAGS) $(LDFLAGS)

# Run target
run:
	./main

# Clean target
clean:
	rm -f $(SUITE)

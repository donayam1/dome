default:
	gcc test.c ../libpfm4/perf_examples/perf_util.c perf.c -lpfm -L../libpfm4/lib -I../libpfm4/perf_examples -I../libpfm4/include -o testpfm4/include -o test

lib:
	gcc -shared -fPIC test.c -I../libpfm4/perf_examples ../libpfm4/perf_examples/perf_util.c perf.c -lpfm -L../libpfm4/lib -I../libpfm4/include -o libperfmon.so

# sudo export LD_LIBRARY_PATH=/home/donayam/Documents/openssl_exp/libpfm4/lib
# export LD_LIBRARY_PATH=LD_LIBRARY_PATH;./
# sudo LD_LIBRARY_PATH=/home/donayam/Documents/Mastik/Mastik2/libpfm4/lib
# sudo LD_LIBRARY_PATH=/home/donayam/Documents/Mastik/Mastik2/libpfm4/lib ./main2

default2:
	gcc main2.c ../libpfm4/perf_examples/perf_util.c ../perf_tool/perf.c -lpfm -L../libpfm4/lib -I../libpfm4/perf_examples -I../libpfm4/include -o testpfm4/include -o main2

run:	
	sudo LD_LIBRARY_PATH=/home/donayam/Documents/openssl_exp/libpfm4/lib ./test 

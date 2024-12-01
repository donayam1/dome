
#include "perf.h"
#include <perfmon/pfmlib_perf_event.h>
#include <perf_util.h>
#include <stdlib.h>
#include <signal.h>

static volatile int quit;
void sig_handler(int n)
{
	quit = 1;
}
void noploop()
{   uint64_t x=0;
	for(;quit == 0;){
        x++;
    }
    printf("nop exited %ld\n",x);
}


int main(int argc, char **argv)
{
    int ret = pfm_initialize();
    if (ret != PFM_SUCCESS)
    {
        errx(1, "Cannot initialize library: %s", pfm_strerror(ret));
    }
    profiling_context_t *ctx = init_profile(0);
    
    signal(SIGALRM, sig_handler);
    alarm(5);
    start_profile(ctx); // 0 for the current process, or thread ID for specific threads   
    noploop();
    uint64_t *res =stop_profile(ctx);
    for(int i=0;i<ctx->num_fds;i++){
        printf("%ld,",res[i]);
    }
    printf("\n");
    perf_free_fds(ctx->fds, ctx->num_fds);
    pfm_terminate();
    free(ctx);
    return 0;
}

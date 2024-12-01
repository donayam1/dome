



#include <perf_util.h>
#include <inttypes.h>

// extern "C" {
    

// int perf_init(perf_event_desc_t **fds,int is_thread);
// void start_profiler(perf_event_desc_t *fds,int num_fds);
// uint64_t *stop_profiler(perf_event_desc_t *fds,int num_fds);

#ifdef __cplusplus
extern "C" {
#endif


typedef  struct 
{
    perf_event_desc_t *fds;
    int num_fds;
}profiling_context_t;

typedef struct 
{
    char *name;
    uint64_t result;
}pref_result_t;

// extern const char *gen_events__[];

void init_prfiler_lib();
profiling_context_t *init_profile(int is_thread,const char**events);
void start_profile(profiling_context_t *ctx);
uint64_t* stop_profile(profiling_context_t *ctx);
pref_result_t* stop_profile2(profiling_context_t *ctx);


#ifdef __cplusplus
}
#endif

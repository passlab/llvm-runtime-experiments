#include "omp.h"
#ifdef __cplusplus
extern "C" {
#endif
    extern  void __kmpc_barrier_simple_spmd(kmp_Ident *, int32_t);
#ifdef __cplusplus
}
#endif

int main(int argc, char **argv) {

    int i = 0;
    #pragma omp target
        i = 1;

    return 0;
}

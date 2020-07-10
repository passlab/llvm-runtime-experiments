// compile: clang -fopenmp test2.c -o test
// triggers warnings about __kmpc_* series function calls, but works

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

// extern ..... 

void init(float *a, int N);

void axpy_omp_parallel_for_gpu(int *gtid, int *btid, const float a, float *A, const float *B, float *C, int n);

int main(int argc, char *argv[])
{
    // arrays on device
    float *dA, *dB, *dC;
    // other elements
    int n = 1024;
    float a = 3.14;
    
    // init A and B and C
    // memory allocation
    dA = (float*)malloc(n*sizeof(float));
    dB = (float*)malloc(n*sizeof(float));
    dC = (float*)malloc(n*sizeof(float));
    // init function calls
    init(dA, n);
    init(dB, n);
    init(dC, n);
    
    // OpenMP code block starts:
    int gtid;
    __kmpc_begin(NULL, 0);
    gtid = __kmpc_global_thread_num();
    __kmpc_fork_call(NULL, 5, axpy_omp_parallel_for_gpu, a, dA, dB, dC, n);
    __kmpc_end(NULL);

    /* test: check result */
    printf("Selected result of A, B, C, a*A + B: %f, %f, %f, %f\n", dA[1], dB[1], dC[1], a*dA[1]+dB[1]);
    
    return 0;
}

void init(float *a, int N) {
    int s;
    for (s = 0; s < N; s++) a[s] = rand() / (float)RAND_MAX;
}

void axpy_omp_parallel_for_gpu(int *gtid, int *btid, const float a, float *A, const float *B, float *C, int n) {
    int i, j;
    int last, lower, upper, stride;
    last = 0;
    __kmpc_for_static_init_4(NULL, *gtid, 33, &last, &lower, &upper, &stride, 1, 4);
    for (i = lower; i <= upper; i++) {
        C[i] = 3.14 * A[i] + B[i]; // a * A[i] is not working
        printf("%d\n", *gtid);
    }
    __kmpc_for_static_fini(NULL, *gtid);
}

// compile: clang -fopenmp test2.c -o test
// triggers warnings about __kmpc_* series function calls, but works

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

// extern .....

void foo(void); 

void init(float *a, int N);

void axpy(const float a, float *A, const float *B, float *C, int n);

void axpy_omp_parallel_for_cpu(int *gtid, int *btid, const float a, float *A, const float *B, float *C, int n);

int main(int argc, char *argv[])
{
    // arrays on device
    float *dA, *dB, *dC;
    // arrays on host
    float *hA, *hB, *hC;
    // other elements
    int n = 1024;
    float a = 3.14;
    
    // init A and B and C
    // memory allocation
    hA = (float*)malloc(n*sizeof(float));
    hB = (float*)malloc(n*sizeof(float));
    hC = (float*)malloc(n*sizeof(float));
    // init function calls
    init(hA, n);
    init(hB, n);
    init(hC, n);
    
    // OpenMP code block starts:
    int gtid;
    __kmpc_begin(NULL, 0);
    gtid = __kmpc_global_thread_num();
    __kmpc_fork_call(NULL, 5, axpy_omp_parallel_for_cpu, a, hA, hB, hC, n);
    __kmpc_end(NULL);

    /* test: check result */
    printf("Selected result of A, B, C, a*A + B: %f, %f, %f, %f\n", hA[0], hB[0], hC[0], a*hA[0]+hB[0]);
    
    return 0;
}

void init(float *a, int N) {
    int s;
    for (s = 0; s < N; s++) a[s] = rand() / (float)RAND_MAX;
}

void axpy(float a, float *A, const float *B, float *C, int n) {
    int i;
    for (i = 0; i < n; i++) {
        C[i] = a * A[i] + B[i];
    }
}

void foo(void) {
    printf("HelloWorld! #%d\n", __kmpc_global_thread_num());
}

void axpy_omp_parallel_for_cpu(int *gtid, int *btid, const float a, float *A, const float *B, float *C, int n) {
    int i;
    int last, lower, upper, stride;
    last = 0;
    __kmpc_dispatch_init_4(NULL, *gtid, 33, 0, n, 1, 16); // 33, 35, 36, 38 for static, dynamic, guided, auto; referrign to kmp.h
    while(__kmpc_dispatch_next_4(NULL, *gtid, &last, &lower, &upper, &stride)) {
        for (i = lower; i <= upper; i++) {
            C[i] = 3.14 * A[i] + B[i]; // a * A[i] is not working
            //printf("%d\n", *gtid);
        }
    }
}

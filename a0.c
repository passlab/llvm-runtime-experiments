#include "omp.h"

 int main(int argc, char **argv) {
     float X[100], Y[100], a=2.0;
     int i,N=100;
     for (i = 0; i < 100; i++) {
         X[i] = 0.0;
     }
     #pragma omp target map(to:X[0:N]) map(tofrom:Y[0:N])
     #pragma omp parallel for
     for (i = 0; i < N; ++i)
         Y[i] += a * X[i];
     return 0;
  }

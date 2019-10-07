#include "omp.h"
#include "stdio.h"

 int main(int argc, char **argv) {
     int i=0, N=100;
     #pragma omp target
         i = 1;
//printf("x\n");

     return 0;
  }

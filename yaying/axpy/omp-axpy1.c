//
//  omp-axpy.c
//  
//
//  Created by Yaying Shi on 10/2/19.
//

#include "omp-axpy.h"

void axpy(int N, float *Y, float *X, float a) {
   int i,j;
   #pragma omp target map(to:X[0:N]) map(tofrom:Y[0:N])
   //#pragma omp parallel for
   for (i = 0; i < N; ++i){
	Y[i] += a * X[i];
	printf("this a tset: %f %f\n",X[i],Y[i]);
   }
}

int main(int argc, char*argv[]){
    int N = 100;
    float Y[N], X[N];
    float x = 5.0;
    for (int i = 0; i <N; i++){
        Y[i] = (((float)rand()/(float)(10)) * x);
        X[i] = (((float)rand()/(float)(10)) * x);
	printf("this is Y: %f\n",Y[i]);
    }
    float a = 0.5;
    axpy(N,&Y[0],&X[0],a);
    return 0;

}



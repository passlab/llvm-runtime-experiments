//
//  omp-axpy.c
//  
//
//  Created by Yaying Shi on 10/2/19.
//

#include "omp-axpycpu.h"

//extern void __kmpc_fork_call(ident_t *, kmp_int32, kmpc_micro, ...);
//extern void __kmpc_for_static_init_4(ident_t *, kmp_int32,kmp_int32,kmp_int32 *,kmp_int32 *,kmp_int32 *,kmp_int32 *,kmp_int32,kmp_int32);
//extern void __kmpc_for_static_fini(ident_t *, kmp_int32);
//extern void __kmpc_global_thread_num(ident_t *);

struct __tgt_offload_entry {
     void *addr;
     char *name;
     size_t size;
     int32_t flags;
     int32_t reserved;
   };
struct __tgt_device_image {
     void *ImageStart;
     void *ImageEnd;
     __tgt_offload_entry *EntriesBegin;
     __tgt_offload_entry *EntriesEnd;
   };

struct __tgt_bin_desc {
     int32_t NumDeviceImages;
     __tgt_device_image *DeviceImages;
     __tgt_offload_entry *HostEntriesBegin;
     __tgt_offload_entry *HostEntriesEnd;
   };

void __kmp_axpy_microtask(int *gtid, int *btid, int N, float *a, float *Y, float *X){
   __attribute__((visibility("hidden")))
   __tgt_offload_entry *__start_omp_offloading_entries;
   __attribute__((visibility("hidden")))
   __tgt_offload_entry *__stop_omp_offloading_entries;
   const char imag[] = ;
   static const __tgt_device_image Images[] = {
     {
       Image0,                            /*ImageStart*/
       Image0 + sizeof(Image0),           /*ImageEnd*/
       __start_omp_offloading_entries,    /*EntriesBegin*/
       __stop_omp_offloading_entries      /*EntriesEnd*/
     }
   static const __tgt_bin_desc BinDesc = {
      sizeof(Images) / sizeof(Images[0]),  /*NumDeviceImages*/
      Images,                              /*DeviceImages*/
      __start_omp_offloading_entries,      /*HostEntriesBegin*/
      __stop_omp_offloading_entries        /*HostEntriesEnd*/
    }

   auto int last,upper,lower,inc;
   //last = N;
   //lower = 0;
   //upper = N;
   //inc = 1;
   
   __kmpc_for_static_init_4(NULL, *gtid, 33, &last,&lower,&upper,&inc,1,1);
   for (int i = 0; i < N; ++i){
	Y[i] += (*a) * X[i];
	printf("this a tset: %f %f\n",X[i],Y[i]);
   }
   __kmpc_for_static_fini(NULL,*gtid);

}

int main(int argc, char*argv[]){
    int N = 100;
    float Y[N], X[N];
    float x = 5.0;
    for (int i = 0; i <N; i++){
        //Y[i] = (((float)rand()/(float)(10)) * x);
        //X[i] = (((float)rand()/(float)(10)) * x);
        Y[i]=1.0;
        X[i]=1.0;
	printf("this is Y: %f\n",Y[i]);
    }
    float a = 0.5;
    auto int gtid;

    __kmpc_begin(NULL, 0);
    gtid = __kmpc_global_thread_num(NULL);
    __kmpc_fork_call(NULL, 4, __kmp_axpy_microtask,N,&a,&Y[0],&X[0]);
    __kmpc_end(NULL);
    return 0;

}



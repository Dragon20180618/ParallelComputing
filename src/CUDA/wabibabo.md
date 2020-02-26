![1](photo/Store_Sign.png)

# CUDA

cuda program kernel function:

```__global__ void functionName(){}```

or

```void __global__ functionName(){}```

***

<h3>Hello World</h3>
<h4>Hello.cu</h4>

```c++
#include<stdio.h>
__global__ void GPU_print(){
    printf("Hello World\n");
}
int main(int argc,char **argv){
    GPU_print<<<2,2>>>();
    cudaDeviceSynchronize();
    return 0;
}
```

Compile:

```nvcc
nvcc Hello.cu -o Hello
```

Execute:

```c
./Hello
```

Result:

`Hello World`

`Hello World`

`Hello World`

`Hello World`

why?  <<<2,2>>>

***

CUDA kernel run in Device. We should realise the differences of Host datas with Device datas.

Let's see the CUDA functions !

cudaMalloc(

​						(void\*\*)&ptr,  int \*ptr -> (void\*\*)&ptr 

​						size, sizeof(ptr_type);

​					)

ptr will get some places from Device



cudaMemcpy(

​					dst, date to dst

​					src, date from src

​					size, how many bytes

​					kind,where to where(cudaMemcpyHostToDevice,cudaMemcpyDeviceToHost and ......)

​					)



cudaDeviceSynchronize()

Wait operate in Device finish

***

GPU has lot's of same things with CPU

different kinds of memory is one of the same things.

**dynamic common Element**

```c++
double *a;
int M=1000;
cudaMalloc((void**)&a,M);
cudaMemcpy(....);
kernel<<<gridSize,blockSize>>>(a);
```

**static global Element**

global and static

```
__device__ double a[5];
__device__ int b;
```

compiler should know the size of static global Element,and we need't be used by arg-way

needn't `kernel<<<1,1>>>(a);`

**constant Element by arg-way**

```c++
int a=1;
kernel<<<1,1>>>(a);
```

read-only and max size is 4KB

**constant Element by \_\_constant\_\_**

```
__constant__ int a=1;
```

read-only and max size is 64 in most NVIDIA GPU

How to copy datas from/to constant Element ?

cudaMemcpyFromSymbol(

​												dst, datas to dst

​												src, datas from src

​												copykind, cudaMemcpyDeviceToHost

​												)

cudaMemcpyToSymbol(

​											dst, datas to dst

​											src, datas from src

​											copykind, cudaMemcpyHostToDevice

​											)

**dynamic shared memory**

```
__global__ void kernel(){
	int n=10;
	__shared__ int a[n];
}
```

read and write, 64KB per block. same block with same shared memory value

**static shared memory**

outside:

`kernel<<<1,1,sharedMemorySize>>>()`

inside:

`extern __shared__  double a[]`

not *a, pointer isn't array

**register memory**

fast and small

```c++
__global__ void kernel(){
    int a=1;
}
```

***

<h3>CUDA Stream</h3>
Let's see the functions!

**type:** cudaStream_t

cudaStreamCreate()
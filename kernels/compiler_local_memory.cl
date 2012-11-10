__kernel void compiler_local_memory(__global int *dst, __local int *src) {
  src[get_local_id(0)] = get_local_id(0);
  dst[get_global_id(0)] = src[15 - get_local_id(0)];
}


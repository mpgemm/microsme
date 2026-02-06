#ifndef GEMM_H
#define GEMM_H

extern "C" {
  void showcase_cachetest();

  void run_gemm( int i_num_threads,
                 int i_qos_type );
}



#endif

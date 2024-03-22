#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 28
#define N_INPUT_2_1 28
#define N_SIZE_0_2 784
#define N_LAYER_3 10
#define N_LAYER_3 10

// hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<16,6> input_t;
typedef ap_fixed<16,6> model_default_t;
typedef ap_fixed<16,6> layer3_t;
typedef ap_uint<1> layer3_index;
typedef ap_fixed<16,6> result_t;
typedef ap_fixed<18,8> dense_softmax_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT> dense_softmax_exp_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT> dense_softmax_inv_table_t;

#endif

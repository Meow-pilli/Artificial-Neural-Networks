import tensorflow as tf
import numpy as np
#import temp3

def float_to_fixed(float_array, frac_bits):
    # Converts a float to fixed-point representation
    scale = 2 ** frac_bits
    return np.round(float_array * scale).astype(int)

def generate_verilog(weights, biases, frac_bits):
    weights_fixed = float_to_fixed(weights, frac_bits)
    biases_fixed = float_to_fixed(biases, frac_bits)

    with open('ann_weights_and_biases.v', 'w') as file:
        # Writing weights
        file.write('`timescale 1ns / 1ps\n\n')
        file.write('module ann_weights_and_biases();\n\n')
        for i, w in enumerate(weights_fixed):
            file.write(f'parameter WEIGHT_{i} = {w};\n')

        # Writing biases
        for i, b in enumerate(biases_fixed):
            file.write(f'parameter BIAS_{i} = {b};\n')

        file.write('\nendmodule')

# Load your trained model
model = tf.keras.models.load_model('temp3.h5')

# Extract weights and biases
weights, biases = model.layers[-1].get_weights()

# Number of fractional bits
FRAC_BITS = 15

# Generate Verilog file
generate_verilog(weights, biases, FRAC_BITS)

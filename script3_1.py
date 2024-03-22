import h5py
import numpy as np

def to_fixed_point(arr, frac_bits):
    """Convert array to fixed point representation with two's complement for negative numbers."""
    fixed_point_arr = np.round(arr * (2 ** frac_bits)).astype(int)
    for i, num in np.ndenumerate(fixed_point_arr):
        if num < 0:
            fixed_point_arr[i] = (abs(num) ^ 0xFFFF) + 1  # Convert to two's complement
    return fixed_point_arr


def generate_sigmoid_lut(lut_size, frac_bits):
    """Generate a lookup table for the sigmoid function."""
    sigmoid_lut = np.zeros(lut_size)
    for i in range(lut_size):
        x = (i / lut_size * 2) - 1  # Scale input to be in the range [-1, 1]
        sigmoid_value = 1 / (1 + np.exp(-x))
        sigmoid_lut[i] = to_fixed_point(sigmoid_value, frac_bits)
    return sigmoid_lut

def write_verilog_init_file(weights, biases, lut, file_name):
    """Write weights, biases, and LUT to a Verilog include file."""
    with open(file_name, 'w') as f:
        # Write weights
        f.write("// Weights Initialization\n")
        for i, row in enumerate(weights):
            for j, weight in enumerate(row):
                f.write(f"weights[{i}][{j}] = 16'd{weight};\n")

        # Write biases
        f.write("\n// Biases Initialization\n")
        for i, bias in enumerate(biases):
            f.write(f"biases[{i}] = 16'd{bias};\n")

        # Write Sigmoid LUT
        f.write("\n// Sigmoid LUT Initialization\n")
        for i, lut_val in enumerate(lut):
            f.write(f"sigmoid_lut[{i}] = 16'd{lut_val};\n")

# Main script
model_path = 'temp3.h5'
model_file = h5py.File(model_path, 'r')

# Extract weights and biases
weights = np.array(model_file['model_weights']['dense']['dense/kernel:0'])
biases = np.array(model_file['model_weights']['dense']['dense/bias:0'])

# Convert to fixed-point representation
frac_bits = 16
weights_fixed = to_fixed_point(weights, frac_bits)
biases_fixed = to_fixed_point(biases, frac_bits)

# Generate sigmoid LUT
lut_size = 256
sigmoid_lut = generate_sigmoid_lut(lut_size, frac_bits)

# Write to a Verilog include file
write_verilog_init_file(weights_fixed, biases_fixed, sigmoid_lut, "weights3.v")

print("Initialization code written to neural_network_init.v")

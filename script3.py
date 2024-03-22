import h5py
import numpy as np

def to_fixed_point(arr, frac_bits):
    """Convert array to fixed point representation."""
    return np.round(arr * (2 ** frac_bits)).astype(int)

def generate_sigmoid_lut(lut_size, frac_bits):
    """Generate a lookup table for the sigmoid function."""
    sigmoid_lut = np.zeros(lut_size)
    for i in range(lut_size):
        x = (i / lut_size * 2) - 1  # Scale input to be in the range [-1, 1]
        sigmoid_value = 1 / (1 + np.exp(-x))
        sigmoid_lut[i] = to_fixed_point(sigmoid_value, frac_bits)
    return sigmoid_lut

# Load the trained model
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
lut_size = 256  # Size of the LUT
sigmoid_lut = generate_sigmoid_lut(lut_size, frac_bits)

# Output for Verilog
# This will print the weights, biases, and LUT in a format that can be copied into the Verilog code
print("Weights:")
print(weights_fixed)
print("\nBiases:")
print(biases_fixed)
print("\nSigmoid LUT:")
for val in sigmoid_lut:
    print(f"{int(val)}")

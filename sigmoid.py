import numpy as np

def sigmoid(x):
    return 1 / (1 + np.exp(-x))

def generate_lut(input_bits, output_bits, input_range):
    lut_size = 2 ** input_bits
    lut = np.zeros((lut_size,), dtype=int)
    for i in range(lut_size):
        # Map the index to the actual input value
        input_value = (i / lut_size) * input_range
        # Calculate sigmoid and convert to fixed-point
        sigmoid_value = sigmoid(input_value)
        fixed_point_rep = int(sigmoid_value * (2 ** output_bits))
        lut[i] = fixed_point_rep
    return lut

# Parameters for LUT
INPUT_BITS = 10  # Number of bits for input
OUTPUT_BITS = 10  # Number of bits for output
INPUT_RANGE = 10  # Range of input values (-INPUT_RANGE/2 to INPUT_RANGE/2)

# Generate LUT
sigmoid_lut = generate_lut(INPUT_BITS, OUTPUT_BITS, INPUT_RANGE)

# Print the LUT values (or write to a file)
for index, value in enumerate(sigmoid_lut):
    print(f"LUT[{index}] = {value};")

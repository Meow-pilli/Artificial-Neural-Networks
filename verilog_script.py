import temp2

def extract_weights_and_biases(model):
    weights_and_biases = []
    for layer in model.layers:
        if len(layer.get_weights()) > 0:
            weights, biases = layer.get_weights()
            weights_and_biases.append((weights, biases))
    return weights_and_biases

weights_and_biases = extract_weights_and_biases(temp2.model)


def format_fixed_point(number, integer_bits, fractional_bits):
    # Scale the floating-point number by the number of fractional bits
    scaled_number = int(number * (2**fractional_bits))
    # Format the number as a binary string
    return format(scaled_number & ((1 << (integer_bits + fractional_bits)) - 1), f'0{(integer_bits + fractional_bits)}b')
 
def write_weights_to_verilog(weights, biases, layer_index, integer_bits, fractional_bits):
    weight_verilog = f"// Weights for Layer {layer_index}\n"
    bias_verilog = f"// Biases for Layer {layer_index}\n"
 
    # Write out weights
    for i, neuron_weights in enumerate(weights):
        for j, weight in enumerate(neuron_weights):
            fixed_point_weight = format_fixed_point(weight, integer_bits, fractional_bits)
            weight_verilog += f"parameter weight_{layer_index}_{i}_{j} = {integer_bits}'b{fixed_point_weight};\n"
 
    # Write out biases
    for i, bias in enumerate(biases):
        fixed_point_bias = format_fixed_point(bias, integer_bits, fractional_bits)
        bias_verilog += f"parameter bias_{layer_index}_{i} = {integer_bits}'b{fixed_point_bias};\n"
 
    return weight_verilog + "\n" + bias_verilog
 
# Specify the number of integer and fractional bits for fixed-point representation
integer_bits = 8
fractional_bits = 8
 
# Loop through each layer and write out the weights and biases
verilog_code = ""
for layer_index, (weights, biases) in enumerate(weights_and_biases):
    verilog_code += write_weights_to_verilog(weights, biases, layer_index, integer_bits, fractional_bits)
 
# Now `verilog_code` contains the formatted weights and biases for Verilog
# You can write `verilog_code` to a file
with open('weights.v', 'w') as file:
    file.write(verilog_code)
 
print("Verilog code with weights and biases has been written to 'weights.v'")
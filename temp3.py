from tensorflow.keras.datasets import mnist
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense, Flatten
from tensorflow.keras.utils import to_categorical

(x_train, y_train), (x_test, y_test) = mnist.load_data()
x_train = x_train / 255.0
x_test = x_test / 255.0

y_train_one_hot = to_categorical(y_train, num_classes=10)
y_test_one_hot = to_categorical(y_test, num_classes=10)

model = Sequential([
    Flatten(input_shape=(28, 28)),
    #Dense(128, activation='relu'),  # First hidden layer with ReLU activation
    #Dense(64, activation='relu'),   # Second hidden layer with ReLU activation
    Dense(10, activation='sigmoid')  # Output layer with linear activation
])

model.compile(optimizer='adam', loss='categorical_crossentropy', metrics=['accuracy'])

model.fit(x_train, y_train_one_hot, epochs=3, validation_data=(x_test, y_test_one_hot))

model.summary()

test_loss, test_accuracy = model.evaluate(x_test, y_test_one_hot, verbose=0)
print(f"Test accuracy: {test_accuracy * 100:.2f}%")

model.save('temp3.h5')

layer_weights = model.get_weights()[0]
layer_biases = model.get_weights()[1]

# Save layer weights
with open("layer_weight.h", 'w') as f:
    weights_str = ', '.join(map(str, layer_weights.flatten()))
    f.write("float layer_weight[" + str(784 * 10) + "]={" + weights_str + "};\n")

# Save layer biases
with open("layer_bias.h", 'w') as f:
    biases_str = ', '.join(map(str, layer_biases.flatten()))
    f.write("float layer_bias[10]={" + biases_str + "};\n")
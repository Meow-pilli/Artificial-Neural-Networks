import numpy as np
from tensorflow.keras.datasets import mnist
from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense, Flatten
from tensorflow.keras.utils import to_categorical
 
# Load and preprocess the MNIST dataset
(x_train, y_train), (x_test, y_test) = mnist.load_data()
x_train = x_train / 255.0
x_test = x_test / 255.0
 
# Convert labels to one-hot encoded format
y_train_one_hot = to_categorical(y_train, num_classes=10)
y_test_one_hot = to_categorical(y_test, num_classes=10)
 
# Define the ANN model architecture
model = Sequential([
    Flatten(input_shape=(28, 28)),
    #Dense(128, activation='relu'),
    #Dense(16, activation='relu'),
    Dense(10, activation='softmax')
])
 
# Compile the model
model.compile(optimizer='adam', loss='categorical_crossentropy', metrics=['accuracy'])
 
# Train the model
model.fit(x_train, y_train_one_hot, epochs=5, validation_data=(x_test, y_test_one_hot))

#summary of model
model.summary()
 
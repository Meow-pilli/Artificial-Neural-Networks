import numpy as np
import matplotlib.pyplot as plt

import tensorflow as tf
from tensorflow.keras import layers

#hls4ml imports start
'''
from tensorflow.keras.utils import to_categorical
from sklearn.datasets import fetch_openml
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import LabelEncoder
from utils import plotting
from sklearn.metrics import accuracy_score

seed=0
np.random.seed(seed)
tf.random.set_seed(seed)

from tensorflow.keras.models import Sequential
from tensorflow.keras.layers import Dense, Activation, BatchNormalization
from tensorflow.keras.optimizers import adam
from tensorflow.keras.regularizers import l1
from utils.callbacks import all_callbacks

import os

if os.path.exists('data'):
    print('Folder \'data\' already created')
else:
    print('Folder \'data\' created')
    os.mkdir('data')

data = fetch_openml('hls4ml_lhc_jets_hlf')
x, y = data['data'], data['target']
'''

import hls4ml
import yaml

from hls4ml.model import profiling #check here
#hls4ml  end

(x_train, y_train), (x_test, y_test) = tf.keras.datasets.mnist.load_data()
x_train = x_train / 255.0
x_test = x_test / 255.0

#plt.imshow(x_train[0], cmap='Greys')

# Flatten the input data
x_train_flat = x_train.reshape((x_train.shape[0], -1))
x_test_flat = x_test.reshape((x_test.shape[0], -1))

model_lr = tf.keras.models.Sequential([
    layers.Input(shape=(28, 28)),
    layers.Flatten(),
    layers.Dense(10, activation='softmax')
])

model_lr.compile(optimizer='adam', loss='categorical_crossentropy', metrics=['accuracy'])

y_onehot_train = tf.one_hot(y_train, 10)
model_lr.fit(x_train, y_onehot_train, epochs=2)
model_lr.summary()

hls_model_std = hls4ml.converters.convert_from_keras_model(model_lr, output_dir='model_std/hls4ml_prj')
hls_model_std.compile()
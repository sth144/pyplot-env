#!/usr/bin/python3

import matplotlib.pyplot as plt
import numpy
import pandas

def get_polynomial_dataset(x, coeffs):
    y = 0
    for i in range(len(coeffs)):
        y += coeffs[i]*x**i
    return y

def image_from_csv(filename):
    df = pandas.read_csv(filename, header=None)
    plt.imshow(df)
    plt.show()
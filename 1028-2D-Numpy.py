# Import the libraries

import numpy as np
import matplotlib.pyplot as plt

# Create a list

a = [[11, 12, 13], [21, 22, 23], [31, 32, 33]]
a

A = np.array(a)
A

A.ndim

A.shape

A.size

A[1,2]

A[1][2]

A[0][0]

A[0][0:2]

A[0:2, 2]

X = np.array([[1,0], [0,1]])
X

Y = np.array([[2, 1], [1,2]])
Y

Z = X + Y
Z

# Create a numpy array Y

Y = np.array([[2,1], [1,2]])
Y

Z = 2 * Y
Z

Y = np.array([[2,1], [1,2]])
Y

X = np.array([[1, 0], [0, 1]])
X

Z = X * Y
Z

# Create a matrix A

A = np.array([[0, 1, 1], [1, 0, 1]])
A

# Create a matrix B

B = np.array([[1, 1], [1, 1], [-1, 1]])
B

# Calculate the dot product

Z = np.dot(A,B)
Z

# Calculate the sine of Z

np.sin(Z)

# Create a matrix C

C = np.array([[1,1],[2,2],[3,3]])
C

# Get the transposed of C

C.T
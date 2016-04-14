import numpy as np

def sigmoid(array , deriv=False):
    if(deriv==True):
        return array*(1-array)
    return 1/(1+np.exp(-array))

x = np.array([[1,0,1,1]]).T
print(sigmoid(x, True))

input = np.array([[1,1,1],
                  [0,1,0],
                  [1,0,1],
                  [0,1,1]])

output = np.array([[1,0,1,0]]).T

syn0 = 2*np.random.random((3,1)) -1


np.random.seed(1)
for i in range(8000):
    l0 = input
    l1 = sigmoid(np.dot(l0, syn0))

    l1_error = output - l1

    l1_delta = l1_error *sigmoid(l1, True)
    syn0 += np.dot(l0.T , l1_delta)
print(l1)
print(syn0)

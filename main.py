import numpy as np
import matplotlib.pyplot as plt
from sklearn.datasets import make_regression

x,y = make_regression(n_samples = 100, n_features = 1, noise= 10)

y = y.reshape(y.shape[0],1)


#On crée la matrice X
# hstack permet de "coller" deux vecteurs

X = np.hstack((x,np.ones(x.shape)))

print(X)

#Deuxieme version
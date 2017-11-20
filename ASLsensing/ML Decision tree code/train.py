import numpy as np
import pandas as pd
from sklearn.externals import joblib
from sklearn.cross_validation import train_test_split
from sklearn.tree import DecisionTreeClassifier
from sklearn.metrics import accuracy_score
from sklearn import tree
import graphviz
balance_data = pd.read_csv("D:\Decision tree\Decision-Tree\gesture_train.csv")
print ("Dataset Length:: ", len(balance_data))
print ("Dataset Shape:: ", balance_data.shape)
print (balance_data.head())
X = balance_data.values[:, 1:5]
Y = balance_data.values[:,0]
#X_train, X_test, y_train, y_test = train_test_split( X, Y, test_size = 0.3, random_state = 100)
clf_gini = DecisionTreeClassifier(criterion = "gini", random_state = 100, max_depth=5, min_samples_leaf=5)
clf_gini.fit(X, Y)
joblib.dump(clf_gini, 'trees.pkl')

dot_data = tree.export_graphviz(clf_gini, out_file=None)
graph = graphviz.Source(dot_data)
graph.render("ies")

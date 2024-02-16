A <- matrix(c(2,0,1,3), ncol = 2)
A
B <- matrix(c(5,2,4,-1), ncol = 2)
B
A+B
A-B

d = diag(c(4,1,2,3), ncol = 4)
d
e = diag(c(0,3,3,3,3), ncol = 5)
e

f = matrix(c(1,0,0,0,0), nrow = 5, ncol = 5)
f

g = e+f
g

h = matrix(c(2,0,0,0,0), nrow = 5, ncol = 5, byrow = TRUE)
h

i = g+h
i

m = matrix(c(1,4,7,2,3,4,5,6,7),nrow = 3) 
m
n = sweep(m,2,c(1,4,7), "+")
n

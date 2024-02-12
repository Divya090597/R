A <- matrix(1:100, nrow=10, byrow = TRUE)
B <- matrix(1:1000, nrow=10)
A
B
A_inverse <- solve(A)
print("Inverse of matrix A:")
print(A_inverse)

det_A <- det(A)
print("Determinant of matrix A:")
print(det_A)

B_inverse <- solve(B)
print("Inverse of matrix B:")
print(B_inverse)

det_B <- det(B)
print("Determinant of matrix B:")
print(det_B)

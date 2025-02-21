# Define two matrices correctly
A <- matrix(c(1,2,3,4,5,6,7,8,9), nrow=3, ncol=3)
B <- matrix(c(9,8,7,6,5,4,3,2,1), nrow=3, ncol=3)

# Print matrices
cat("Matrix A:\n")
print(A)
cat("\nMatrix B:\n")
print(B)

# Addition of matrices
sum_matrix <- A + B
cat("\nSum of matrix A and B:\n")
print(sum_matrix)

# Multiplication of matrices
product_matrix <- A %*% B
cat("\nProduct of matrix A and B:\n")
print(product_matrix)

# Inverse of matrix A
if (det(A) != 0) {
  Inverse_A <- solve(A)
  cat("\nInverse of A:\n")
  print(Inverse_A)
} else {
  cat("\nMatrix A is singular and does not have an inverse.\n")
}

# Inverse of matrix B
if (det(B) != 0) {
  Inverse_B <- solve(B)  # Fixed incorrect function call
  cat("\nInverse of B:\n")
  print(Inverse_B)
} else {
  cat("\nMatrix B is singular and does not have an inverse.\n")
}

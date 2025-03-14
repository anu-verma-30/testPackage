#' Estimate Beta for Linear Regression
#'
#' @param y A numeric vector of n observations.
#' @param X A numeric matrix of n x k predictor variables.
#'
#' @return A numeric vector of estimated beta coefficients. 
#' @export
#'
#' @examples
#' y <- c(2, 3, 5, 7)
#' X <- matrix(c(1, 1, 1, 1, 1, 2, 3, 4), ncol = 2)
#' estimate_beta(y, X)
estimate_beta <- function(y, X) {
  XtX <- t(X) %*% X  # Compute X'X
  # Check if XtX is singular (det(XtX) = 0 means it's singular)
  if (det(XtX) == 0) {
    warning("Matrix X'X is singular. Computation may be unstable.")
  }
  beta_hat <- solve(XtX) %*% t(X) %*% y  # Compute OLS estimate
  return(beta_hat)
}

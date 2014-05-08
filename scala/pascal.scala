def factorial(n: Int): Int =
  (1 to n) reduceLeft (_ * _)

def binomial(n: Int, k: Int): Int = {
  if  (n - k <= 0) 1
  else if (k <= 0) 1
  else factorial(n) / (factorial(k) * factorial(n - k))
}

def pascal(row: Int, col: Int): Int = {
  if (row - col + 1 <= 1) 1
  else if (col <= 1) 1
  else pascal(row - 1, col - 1) + pascal(row - 1, col)
}

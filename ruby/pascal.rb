def factorial(n)
  (1..n).reduce(:*)
end

def binomial(n, k)
  return 1 if (n - k <= 0) || (k <= 0)
  fact(n) / ( fact(k) * fact( n - k ) )
end

def pascal(row, col)
  return 1 if (row - col + 1 <= 1) || (col <= 1)
  pascal(row - 1, col - 1) + pascal(row - 1, col)
end

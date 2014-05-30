#!/bin/ruby

File.open( 'scala/euler/problem_11.txt', 'r' ) do |f|
  grid = []
  f.each_line do |line|
    grid << line.split(' ').map(&:to_i)
  end

  products = []
  for row in (0..16)
    for col in (0..16)
      products << grid[row][col] * grid[row][col+1] * grid[row][col+2] * grid[row][col+3]
      products << grid[row][col] * grid[row+1][col] * grid[row+2][col] * grid[row+3][col]
      products << grid[row][col] * grid[row+1][col+1] * grid[row+2][col+2] * grid[row+3][col+3]
      products << grid[row+3][col] * grid[row+2][col+1] * grid[row+1][col+2] * grid[row][col+3]
    end
  end
  puts products.max
end

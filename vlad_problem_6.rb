# The sum of the squares of the first ten natural numbers is,

# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,

# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

my_range = (1..100).to_a

def sum_of_squares(range)
  sum = 0
  until range.empty?
    sum += range.first ** 2
    range.shift
  end
  return sum
end

def square_of_sum(range)
  return range.inject(:+) ** 2
end

def difference_between_sums(range)
  return square_of_sum(range) - sum_of_squares(range)
end

p difference_between_sums(my_range)
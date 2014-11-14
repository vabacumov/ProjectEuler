# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

# PSEUDOCODE: 
# 1) Create an array containing the range of integers from 1 to 20 (inclusive)
# 2) Start from number 2520 and check if it's divisible by every element in the array from step 1
# 3) Return the number once the condition is satisfied

divisors = [20, 19, 18, 17, 16, 15, 14, 13, 12, 11]

def even_division_checker(divisible, range)
  divisible -= 1
  solution = false
  until solution do
    solution = true
    divisible += 1
    range.each do |divisor|
      solution = false if divisible % divisor != 0
      break if divisible % divisor != 0
    end
  end
  return divisible
end

p even_division_checker(2520, divisors)
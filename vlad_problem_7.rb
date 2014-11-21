# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

def nth_prime_number(n)
  index_of_prime_number = 2
  prime_number = 3
  current_number = 4 

  until index_of_prime_number == n # O(n)
    if is_prime?(current_number) # O(n)
      prime_number = current_number
      index_of_prime_number += 1
      p index_of_prime_number
    end
    current_number += 1
  end

  return prime_number

end

def is_prime?(number)
  return false if number.even? && number != 2 # O(1)

  divisor = 3

  until divisor == number # O(n/2) or O(n)
    return false if number % divisor == 0
    divisor += 2
  end

  return true
end

# TIME COST: O(n) * O(n) = O(n^2)
# SPACE COST: O(1)

p nth_prime_number(10001)
# p is_prime?(9)
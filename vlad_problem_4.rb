# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# INPUT: ?
# OUTPUT: Number (palindrome)

# Step 1: Find the largest possible product of two 3-digit nubmers
# Step 2: Write a method that checks whether a number is a palindrome
# Step 3: Start with the number from step 1 and count down until a palindrome is found


def is_palindrome?(number) # step 2
  digit_array = number.to_s.split('')
  return true if digit_array.reverse == digit_array
end

def is_product_of_n_digit_numbers?(number, num_of_digits)
  array = (("1" + "0" * (num_of_digits - 1)).to_i..("9" * num_of_digits).to_i).to_a
  array.reverse.each do |x|
    return true if (number % x == 0) && ((number / x).to_s.length == num_of_digits)
  end
  return false
end

# p is_palindrome?(909) == true

def largest_possible_product(num_of_digits)
  return (("9" * num_of_digits).to_i) ** 2
end

def largest_palindome_product(num_of_digits)
  palindrome_array = []
  (0..largest_possible_product(num_of_digits)).to_a.each do |x|
     if is_palindrome?(x)
      palindrome_array << x
    end
  end
  palindrome_array.reverse.each do |palindrome|
    return palindrome if is_product_of_n_digit_numbers?(palindrome, num_of_digits)
  end
  return false
end

p largest_palindome_product(3)

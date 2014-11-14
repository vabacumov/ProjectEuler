# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

# Step 1: Attempt to break up the number into multiples:
#   a) start with 2:
#     I) if not evenly divisible, increment multiple by 1;
#     II) if evenly divisible, push multiple to array_of_factors, go back to step 1 with the other multiple.
# Step 2: Go through the array of factors:
#   a) if the number is prime, keep as is;
#   b) if not, find factors of that number and push them into the array_of_factors.
# Step 3: Repeat step 2 until all elements in the array_of_factors are prime.
# Step 4: Identify the largest element of the array.

$factors = []

def prime?(number)
  return true if number == 2
  (2..(number - 1)).each do |element|
    if number % element == 0
      return false
    end
  end
  return true
end

def find_factor(number)
  multiple = 2
  until number % multiple == 0
    multiple += 1
  end
  if prime?(multiple)
    $factors << multiple
  else
    find_factor(multiple) # recursive solution (can probably be refactored)
  end
  if number == multiple
    return $factors
  end
  find_factor(number / multiple)
end

# Step 4
def find_largest_element(array)
  return array.sort.last
end

p find_largest_element(find_factor(600851475143))

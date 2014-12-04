# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.



def is_a_pythagorean_triplet?(a,b,c)
  return true if a**2 + b**2 == c**2
end

def is_a_sum_of_1000?(*integers)
  return true if integers.inject(:+) == 1000 && integers.uniq.length == integers.length
end

def product(*integers)
  return integers.inject(:*)
end
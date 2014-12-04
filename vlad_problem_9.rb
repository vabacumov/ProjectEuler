# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def find_unique_pythagorean_triplet
  array = (1..1000).to_a
  a_index = 0
  until a_index == 998
    (a_index..998).to_a.each do |b_index|    
      a = array[a_index]
      b = array[b_index]
      (b_index + 1..999).each do |c_index|
        c = array[c_index]
        p "a: #{a}, b: #{b}, c: #{c}"
        return product(a,b,c) if is_a_pythagorean_triplet?(a,b,c) && is_a_sum_of_1000?(a,b,c)
      end
    end
    a_index += 1
  end
end

# numbers_range = (1..1000).to_a
# square_roots_range = (1..1000).to_a.map! { |num| num ** 2 }

def is_a_pythagorean_triplet?(a,b,c)
  return true if a**2 + b**2 == c**2
end

def is_a_sum_of_1000?(*integers)
  return true if integers.inject(:+) == 1000 && integers.uniq.length == integers.length
end

def product(*integers)
  return integers.inject(:*)
end

p find_unique_pythagorean_triplet
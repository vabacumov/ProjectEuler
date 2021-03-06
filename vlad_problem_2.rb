# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

def fib_sequence(max)
  fib_array = [1,2]
  until fib_array.last >= max do
    fib_array << (fib_array.last + fib_array[-2])
  end
  return fib_array
end

def sum_even_members(array)
  sum = 0
  array.each do |x|
    sum += x if x.even?
  end
  return sum
end

p sum_even_members(fib_sequence(4000000))

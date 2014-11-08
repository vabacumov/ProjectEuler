class Solver
	def initialize(max)
		@max = max
	end

	def multiples_of_three
		(0...@max).select do |x|
			x % 3 == 0
		end 
	end

	def multiples_of_five
		(0...@max).select do |x|
			x % 5 == 0
		end
	end

	def remove_dups
		array = []
		array.push(multiples_of_three)
		array.push(multiples_of_five)
		array.flatten!
		return array.uniq
	end

	def sum_multiples
		return remove_dups.inject(:+)
	end	
end

my_solver = Solver.new(1000)

p my_solver.sum_multiples

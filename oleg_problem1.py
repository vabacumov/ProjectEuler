def multipleOfThree(number):
	if number % 3 == 0:
		return True
	else:
		return False

def multipleOfFive(number):
	if number % 5 == 0:
		return True
	else:
		return False

#I know I can make this more clear by breaking hte "sum" functionality out of this method, but I'm not sure how to store the sum...
def multipleFinder(number):
	sumTotal = 0
	for i in range(number):
		if multipleOfThree(i) == True or multipleOfFive(i) == True:
			sumTotal = i + sumTotal
	return sumTotal
			
print(multipleFinder(1000))

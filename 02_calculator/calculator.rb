def add(n1,n2)
	sum = n1 + n2
end

def subtract(n1,n2)
	difference = n1-n2
end

def sum(numset)
	total = 0
	numset.each {|num| total += num }
	return total
end

def multiply(n1,n2)
	product = n1 * n2
end

def product(numset)
	total = 1
	numset.each {|num| total *= num}
	return total
end

def factorial(n)
	total = 1
	arrayn=(1..n).to_a
	arrayn.reverse.each {|x| total *= x}
	return total
end
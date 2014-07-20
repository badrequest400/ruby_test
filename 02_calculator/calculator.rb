def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(a)
	res = 0
	a.each {|i| res += i}
	res
end

def multiply(*num)
	res = 1
	num.each {|i| res *= i}
	res
end

def power(a, b)
	res = 1
	(1..b).each {|i| res *= a}
	res
end

def factorial(a)
	res = 1
	while a > 0 do
		res *= a
		a -= 1
	end
	res
end
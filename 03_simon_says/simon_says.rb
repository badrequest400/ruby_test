def echo(smt)
	smt
end

def shout(smt)
	smt.upcase()
end

def repeat(smt, times=2)
	res = ''
	(1..times).each {|i| res += smt + ' '} 
	res.strip
end

def start_of_word(smt, letters=1)
	smt[0...letters]
end

def first_word(smt)
	smt.split(' ').first()
end

def titleize(smt)
	counter = 0
	res = ''
	w = ['and', 'or', 'in', 'of', 'the', 'over']
	smt.split.each do |i| 
		if w.include?(i) and counter > 0
			res += i + ' '
			counter += 1
		else
			res += i.capitalize + ' '
 			counter += 1
		end
	end

	res.strip
end
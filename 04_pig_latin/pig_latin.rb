def translate(words)
	list = words.split(' ')
	res =''

	list.each {|i| res += trs(i) + ' '}
	res.strip
end


def trs(word)
	vowels = ['a','e', 'i', 'o', 'u']

	if vowels.include?(word[0])
		word += 'ay'
		word
	else
		i = 0
		while !vowels.include?(word[i]) do
			i += 1
		end

		if word[i-1] == 'q' and word[i] == 'u'
			word = word[i+1..-1] + word[0..i] + 'ay'			
		else
			word = word[i..-1] + word[0...i] + 'ay'
		end
	end










	# if vowels.include?(word[0])
	# 	word += 'ay'
	# 	word
	# else
	# 	if vowels.include?(word[1])
	# 		word = word[1..-1] + word[0] + 'ay'
	# 	else
	# 		word = word[2..-1] + word[0..1] + 'ay'
	# 	end
	# end
	# word
end

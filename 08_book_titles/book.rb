class Book

	@title

	def title= (name)
		list = name.split(' ')
		c =0 
		little_words = ['a', 'an', 'and', 'or', 'of', 'the', 'to', 'in']

		list.each {|i| 

			if little_words.include?(list[c]) && c != 0
				c += 1
				next
			else
				list[c] = i.capitalize
			end

			c += 1
		}

		@title = list.join(' ')
	end

	def title
		@title
	end

end
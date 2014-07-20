class Timer

	@timer
	@seconds
	@minutes
	@hours

	def initialize
		@timer = 0
	end

	def seconds= (seconds)
		@minutes = seconds / 60
		@seconds = seconds % 60
		@hours = @minutes / 60
		@minutes = @minutes % 60

		@timer = seconds

	end

	def seconds
		@timer
	end

	def time_string
		"#{"%02d" % @hours}:#{"%02d" % @minutes}:#{"%02d" % @seconds}"		

	end

end

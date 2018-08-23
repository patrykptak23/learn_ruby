class Timer
  #write your code here
  attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def seconds=(seconds)
		@seconds= seconds
	end

	def time_string

		hours = seconds / 3600
		minutes = (seconds / 60) % 60 
		rest = seconds % 60

		sprintf('%02i:%02i:%02i',hours,minutes,rest) 
		
	end
end

#https://github.com/oisteinhaugland/learn_ruby/blob/master/06_timer/timer.rb
class HangMan

	def initialize(string)
		@string = string
		@final = "-"*string.size
		@end_game = string.chars.uniq.size
	end

	def get_final
		@final
	end

	def result
		@final.include?("-") ? "You Loose" : "You Win"
	end

	def process(input)
		char_arr = @string.chars		
		char_arr.each_with_index do |a, index|
			next if input.to_s != a
			@final[index] = input
		end
		return @final
	end

	def enter_word
		(1..@end_game).each_with_index do |i, index|
			print "Please enter your #{index} aphabates here : "
			input = gets.chomp
			p process(input)
		end
	end
end
string = 'Vikrami'
h = HangMan.new(string)
p "Welcome to HangMan Game"
h.enter_word
p "Your final String : #{h.get_final}"
p "Result : #{h.result}"
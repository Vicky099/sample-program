#
class Factorial
	def fact(number)
		original_number = number
		total = 1
		while number != 0
			total = total*number
			number = number-1
		end
		return "Factorial of #{original_number} is :#{total}"
	end

  def rec_fact(number)
    number == 0 ? 1 : number*rec_fact(number-1)
  end

end
p "Please enter number"
puts Factorial.new.rec_fact(gets.chomp.to_i)

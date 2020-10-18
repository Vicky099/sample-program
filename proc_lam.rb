class Test
	#Return behavior using proc and lambda 
	def lambda_test
		puts "Before lambda return"
		lam = lambda { return }
		lam.call
		puts "After lambda return"	
	end

	def proc_test
		puts "Before proc return"
		p = proc { return }
		p.call
		puts "After proc return"
	end

	def block_test
		p "after block call"
		yield 2
		p "Before block call"
	end

	# if we not defined block while calling method then localJumpError eception occur. to avoid that check whether block_given? or not
	def optional_block
		p "in optional block"
		yield if block_given?
	end
end
p "------------------------"
t = Test.new
t.lambda_test
p "------------------------"
t.proc_test
p "------------------------"
t.block_test { |a| puts "call to block - #{a}"}
p "------------------------"
t.optional_block

class Param
	def proc_test
		p = proc {|check| puts "here : #{check}"}
		p.call('vikram')
	end
end
p "------------------------"
a = Param.new
a.proc_test
p "------------------------"
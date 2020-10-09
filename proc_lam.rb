class Test
	#Return behavior using proc and lambda 
	def lambda_test
		puts "Before proc return"
		lam = lambda { return }
		lam.call
		puts "After proc return"	
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
end

t = Test.new
t.lambda_test
t.proc_test
t.block_test { |a| puts "call to block - #{a}"}
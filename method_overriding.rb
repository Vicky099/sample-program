#method overriding in ruby
class Test3
	def a1
		puts "<<<<< Test3 method a1"
	end
end

class Test4 < Test3
	def a1
		#super -> with the help of this we can call super class method
		puts "<<<<< Test4 method a1"
	end
end

b = Test4.new
b.a1

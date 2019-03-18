#method overriding in ruby
class Test3
	def a1
		puts "<<<<< Test3 method a1"
	end
end

class Test4 < Test3
	def a1
		puts "<<<<< Test4 method a1"
	end
end

b = Test4.new
b.a1



#using super method - by using super call to parent class method, we can access all instance variables defined in subclass to super class.
class Test5
	def a1
		p "<<<< called from super : #{@a}"
	end
end

class Test6 < Test5
	def a1
		@a = "Test6 instance variable"
		super
		p "<<<< Test 6 class"
	end
end

s = Test6.new
s.a1


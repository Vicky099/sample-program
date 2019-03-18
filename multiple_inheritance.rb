# multiple inheritance - Mixin
module A
	def a1
		p "a1 method call"
	end

	def a2
		p "a2 method call"
	end
end

module B
	def b1
		p "b1 method call"
	end

	def b2
		p "b2 method call"
	end
end

class C
	include A
	include B

	def c1
		p "c1 method call"
	end

	def a1
		super() #it execute parent method and then continue with method execution
		p "a1 called from class C"
	end
end

c = C.new
c.a1

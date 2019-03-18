#method overloading in ruby - Ruby doen't support method overloading
class Test
	def a(a1)
		p "a1 : #{a1}"
	end

	def a(a1,a2)
		p "a1 -- #{a1} -- a2-- #{a2}"
	end
end

t = Test.new
#t.a('vikram') -> it throws error because it called last defined method of class, so it throws argument error
t.a('vikram','vik') #This works because it calls last defined method

#better to keep your class like below

class Test2
	def a(*args)
		p "<<<< #{args}"
	end
end

t2 = Test2.new
t2.a("vikram")
t2.a("vikram", "Panmand")

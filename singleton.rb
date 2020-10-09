class Foo
	def method1
		p "1"
	end
end

foo = Foo.new

def foo.method2
	p "2"
end
foo.method1
foo.method2

p "<<< foo other"
foo_other = Foo.new

def foo_other.method3
	p "3"
end
foo_other.method1
# foo_other.method2
foo_other.method3

#foo_other will not able to call method2 as this method is associated with foo object. this is call singlton class

p Foo.method_defined? :method1
p Foo.method_defined? :method2
p Foo.method_defined? :method3


singleton_class = ( 
		class << foo;
			self;
		end 
	)
p "<<< check method for foo object"
p singleton_class.method_defined? :method1
p singleton_class.method_defined? :method2
p singleton_class.method_defined? :method3



p "<<< check method for foo_other object"
other_singleton_class = (
 		class << foo_other; 
 			self; 
 		end 
 	)
p other_singleton_class.method_defined? :method1
p other_singleton_class.method_defined? :method2
p other_singleton_class.method_defined? :method3

module Abc
	def pqr
		puts "module method PQR called"
	end
end

class Example
	include Abc
end
# Include is used to importing module code. Ruby will throw an error when we try to access the methods of import module with the class directly because it gets imported as a subclass for the superclass. So, the only way is to access it through the instance of the class.
e = Example.new
e.pqr


class Example2
	extend Abc
end
# Extend is also used to importing module code but extends import them as class methods. Ruby will throw an error when we try to access methods of import module with the instance of the class because the module gets import to the superclass just as the instance of the extended module. So, the only way is to access it through the class definition.
Example2.pqr

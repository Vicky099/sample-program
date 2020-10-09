class Friend
  def name
    "Chris"
  end
end

class Child
  def name
    "John"
  end
end

class Father
  def greeting(person)
    p "Hi #{person.name}"
  end
end

friend = Friend.new
child = Child.new
father = Father.new
father.greeting(friend)
father.greeting(child)


# Simple ingeritance
class Father1
	def msg1
		p "This is parent"
	end
end

class Friend1 < Father1
	def msg1
		super
		p "This is friend msg1"
	end
end

class Child1 < Father1
	def msg1
		super
		p "This is child msg1"
	end
end

p "----------------------------"
t1 = Father1.new
t1.msg1
p "----------------------------"
f1 = Friend1.new
f1.msg1
p "----------------------------"
c1 = Child1.new
c1.msg1
p "-----------------------------"


# simple multilple inheritance
module Common
	def msg1
		super
		p "this is msg 1 ..."
	end
end

class Father2
	def msg1
		p "This is parent ..."
	end
end

class Friend2 < Father2
	include Common
end

class Child2 < Father2
	include Common
end

p "----------------------------"
t1 = Father2.new
t1.msg1
p "----------------------------"
f1 = Friend2.new
f1.msg1
p "----------------------------"
c1 = Child2.new
c1.msg1
p "-----------------------------"

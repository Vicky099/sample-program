module A
	def A.method_ab
		puts "Method a called"
	end
end

module B
	def B.method_ab
		puts "Method b called"
	end
end

class C
	include A
	include B
	def initialize
		puts "class C method called"
	end
end

C.new
A.method_ab
B.method_ab
p "*****************************************************************"

module Name
  def bella
  	p "bella"
  end

  def ana
  	p "ana"
  end
end
module Job
  def editor
  	p 'editor'
  end

  def writer
  	p 'writer'
  end
end

class Combo
include Name
include Job
  def f
  	p 'f'
  end
end

final=Combo.new
final.bella
final.ana
final.editor
final.writer
final.f
p "*****************************************************************"

#STRING
puts <<STRING
hi mera
dil
STRING
p "*****************************************************************"

puts %/
hi
mera
dil
/
p "*****************************************************************"
puts "
ky
kru
haye
"
p "*****************************************************************"

str = "Original string"
str << " is modified "
str << "is again modified"
puts str
str.freeze
# p str << "vikram"
p "*****************************************************************"

p 1.is_a?(Integer)
p "*****************************************************************"

#ARRAY
days = ["Fri", "Sat", "Sun"]
puts days.unshift("Today")
p "*****************************************************************"

days = ["Fri", "Sat", "Sun"]
puts days.insert(0, "Thursday")
p "*****************************************************************"

days = ["Fri", "Sat", "Sun"]
puts days.pop(2)
p days
p "*****************************************************************"

days = ["Fri", "Sat", "Sun"]
puts days.shift
p days
p "****************************************************************"

days = ["Fri", "Sat", "Sun"]
puts days.delete("Sat")
p days
p "****************************************************************"

days = ["Fri", "Sat", "Sun", "Sat"]
puts days.uniq!
p days
p "****************************************************************"

#HASH

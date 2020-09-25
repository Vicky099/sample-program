#diffrence between for and each : For using 'for' loop we can access a defined loop variable outside loop. but using each loop we can not access that element.
def check
	sites = %w[stackoverflow stackexchange serverfault]

	for f in sites do
	  puts f
	end
	puts "<<<< outside f : #{f}"

	sites.each do |x|
		puts x
	end
	#puts "<<<< outside x : #{x}"
end

#check

#Inheritance
class Being
  @@count = 0
  def initialize
    @@count += 1
    puts "Being class created -- #{@@count}"
  end

  def show_count
    "There are #{@@count} beings"
  end
end

class Human < Being
 	def initialize
    super
    puts "Human is created"
 	end
end

class Animal < Being
	def initialize
	  super
	  puts "Animal is created"
	end
end

class Dog < Animal
  def initialize
    super
    puts "Dog is created"
  end
end

#Human.new
#d = Dog.new
#puts d.show_count
=begin
OUTPUT -
Being class created -- 1
Human is created
Being class created -- 2
Animal is created
Dog is created
There are 2 beings
[Finished in 0.1s]
=end

class Base

    def show x=0, y=0
        p "Base class, x: #{x}, y: #{y}"
    end
end

class Derived < Base

    def show x, y
        super
        super x
        super x, y
        super()
    end
end


d = Derived.new
d.show 3, 3

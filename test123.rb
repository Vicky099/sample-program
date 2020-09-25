class Person
end
class Friend < Person
  def name
    "Chris"
  end
end

class Child < Person
  def name
    "John"
  end
end

class Father < Person
  def greeting(person)
    "Hi #{person.name}"
  end
end

joe = Child.new("Joe")
jim = Father.new("Jim")

[joe, jim].each(&:my_name)

class Person
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def description
    name + " is " + age.to_s + " years old"
  end
end

class Child < Person
  def initialize(name, age, hobbies)
    super(name, age)
    @hobbies = hobbies
  end
end

class Father < Person
  def initialize(name, age, job_title)
    super(name, age)
    @job_title = job_title
  end
end

joe = Child.new("Joe", 18, ["music", "coding"])
p joe.description # => Joe is 18 years old

jim = Father.new("Jim", 45, "CEO")
p jim.description # => Jim is 45 years old

# LAMBDA
# Lambada synatx and called lambda object using .call method
lam = lambda {puts "hello vikram"}
lam.call

#below are the more way to call lambda function
lam.call
lam.()
lam.[]
lam.===




# You can also create a lambda with the literal lambda operator, which looks like this and can have zero or more arguments: ->
lam2 = -> {puts "hello Vikram from literal"}
lam2.call



# lambda take care about argument. if we define 2 arguments and passed one argument to lambda then lambda raise error. correct number of arguments should passed to lambda. Also we can add default params in lambda in that no need to pass defined var
lam3 = -> (v) { puts "Hello Vikram #{v}"}
lam3.call("Panmand")



# You can also use default arguments with a Ruby lambda:
lam4 = lambda {|name="Vicky"| puts "My name is #{name}"}
lam4.call
lam4.call("Vikram")



# Multiline lambda
lam5 = lambda do
	puts "This is Multiline lambda"
	puts "yes i am at second line"
end
lam5.call



# What Purpose do Lambdas Serve?
# The additional indirection that lambda functions provide give you flexibility when writing a Ruby program. For instance, you can pass a lambda to a function:
double_it = lambda { |num| num*2 }
triple_it = lambda { |num| num*3 }

def apply_lambda(lam_var, number)
	puts lam_var.call(number)
end

apply_lambda(double_it, 3) #6
apply_lambda(triple_it, 4) #12



#also you can craate array of lambda to execute in pipeline
double_it2 = lambda { |num| num * 2 }
triple_it2 = lambda { |num| num * 3 }
half_it2  = lambda { |num| num / 2 }
value = 5

lambda_pipeline = [double_it2, triple_it2, half_it2]

lambda_pipeline.each do |lmb|
  value = lmb.call(value)
end
puts value # 15




#PROC & LAMBDA DIFFRENCE
my_proc = Proc.new {|name| puts "proc says hello " + name.to_s }
my_lambda = lambda {|name| puts "lambda says hello " + name.to_s }

my_proc.call("jerry") #proc says hello jerry
my_lambda.call("jerry") #lambda says hello jerry

my_proc.call #proc says hello
# my_lambda.call #Throw error


# You can, of course, use the splat operator allow a lambda to take multiple arguments:
my_lambda2 = lambda do |*args|
	args.each do |arg|
		puts "I saw " +arg
  	end
end
my_lambda2.call("a", "b", "c")


# The behavior of the return statement
# The return statement is handled differently as well. The return statement in a lambda function stops the lambda and returns control to the calling code. The return statement in a Proc, in contrast, returns from both the Proc and the calling code. Here’s an example:
my_lambda3 = lambda do |name|
  puts "lambda says hello " + name
  return "lambda done"
  puts "after return in lambda"
end

my_proc3 = Proc.new do |name|
  puts "proc says hello " + name
  return "proc done"
  p "After return in proc"
end

def call_lambda(lmbda)
  value = lmbda.call("jerry")
  puts value
end
call_lambda(my_lambda3)

def call_proc(prc)
  value = prc.call("jerry")
  puts value
end
call_proc(my_proc3)

# lambda says hello jerry
# lambda done
# proc says hello jerry

# You see “lambda done” but not “proc done” because the return statement in the proc terminates the program flow.


collection = [1,2,3,4,5,6,7,8]
my_lambda4 = lambda do |num|
  	if num % 2 == 0
		return num
  	end
  	if num % 5 == 0
		return
  	end
  	num*2
end

new_collection = collection.map { |c| my_lambda4.call(c) }.compact
puts new_collection
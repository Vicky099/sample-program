# Block calling using yield
def hello
	yield 2
	puts "inside hello method"
	yield 4
end
hello {|i| p "hello my number is #{i}"}




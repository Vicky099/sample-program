class Animal
	def padhe(range)
		a = 1..range
		a.each do |stanza|
			p (1..10).collect{|y| stanza*y}
		end
	end
end

animal = Animal.allocate
animal.padhe(10)

i = "Sudo Placements"

# using for loop with the range
for a in 1..5 do

 puts i

end

class Example

	#strings are mutable. it can change by assignment. it creates diff object id for same string
	def check_string(str1, str2)
		str1_obj = str1.object_id
		str2_obj = str2.object_id
		
		p "<<<< str1_obj : #{str1_obj} --- str2_obj : #{str2_obj}"
		return str1_obj == str2_obj
	end

	# symbols are immutable. symbol can only override. same object id used for same symbol
	def check_symbol(sym1, sym2)
		sym1_obj = sym1.object_id
		sym2_obj = sym2.object_id
		
		p "<<<< sym1_obj : #{sym1_obj} --- sym2_obj : #{sym2_obj}"
		return sym1_obj == sym2_obj
	end
end

s = Example.new

p s.check_string("Vikram", "Vikram")
# "<<<< str1_obj : 46917800336760 --- str2_obj : 46917800336740"
# false


p s.check_symbol(:vikram, :vikram)
# "<<<< sym1_obj : 1063388 --- sym2_obj : 1063388"
# true

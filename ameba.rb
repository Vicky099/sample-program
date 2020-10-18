# Ameaba problem
class Ameba
	def process(sec)
		result = 1
		data = []
		(1..sec).each do |s|
			data << result *= 2
		end
		return data.find_index(result/2)+1
	end
end

t = Ameba.new
p t.process(19)




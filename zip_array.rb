class ZipArray
	def do_zip
		a = [1, 2, 3, 4, 5, 6, 7]
		b = [2, 7, 8, 9, 0, 1]
		c = [4, 3, 2]
		p a.zip(b, c)
	end
end
z = ZipArray.new
z.do_zip
class TestFile
	def write_file
		File.open('about.txt', 'w') do |f|
	    f.puts "This is JavaTpoint"
	    f.write "You are reading Ruby tutorial.\n"
	    f << "Please visit our website.\n"
		end
	end

	def read_file
		File.open('about.txt', 'r') do |f|
			p f.read #To return a single line, following syntax is used.
			#p f.gets #To return the whole file after the current position, following syntax is used.
			while line = f.gets
			  puts line
			end
			f.readlines.each do |line| #To return file as an array of lines, following syntax is used.
				p line
			end
		end
	end

	#The sysread method is also used to read the content of a file. With the help of this method you can open a file in any mode.
	def using_sysread_method
		aFile = File.new('C:\Users\vikram.panmand\Desktop\about.txt', 'r')
		if aFile
		  content = aFile.sysread(40) #The argument 40 will print till 40 characters from the file
		  puts content
		else
		  puts "Unable to open file!"
		end
	end

	#syswrite - With the help of syswrite method, you can write content into a file.
	#File needs to be opened in write mode for this method.
	#The new content will over ride the old content in an already existing file.
	def write_a_file_with_syswrite
		aFile = File.new('C:\Users\vikram.panmand\Desktop\about.txt', 'r+')
		if aFile
			aFile.syswrite("New content is written in this file.\n")
		else
			p "Unable to write file!"
		end
	end
end

f = TestFile.new
f.write_file
f.read_file
f.using_sysread_method
f.write_a_file_with_syswrite

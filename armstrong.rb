#an armstrong number of three digits is an integer such that the sum of the cubes of its digit is equal to the number itself. for example, 371 is an armstrong number sunce 3**3 + 7**3 + 1**3 = 371.
class Armstrong

  def arm(number)
    temp = number
    sum = 0
    while(temp != 0)
      digit = temp % 10
      temp = temp / 10
      sum = sum+(digit**3)
    end
    if sum == number
      puts "armstrong number : " + number.to_s
    else
      puts "Not armstrong number :" + number.to_s
    end
  end

  def more_arm(range)
    0..range.to_i.times do |number|
      arm(number)
    end
  end

end
puts 'Please enter number'
Armstrong.new.arm(gets.chomp.to_i)
puts 'Please enter range to find armstrong numbers'
Armstrong.new.more_arm(gets.chomp.to_i)

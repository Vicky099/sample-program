#A prime number is a whole number greater than 1 whose only factors are 1 and itself. a factor is a whole number that can be divided evenly into another number.
class Prime
  def get_prime(number)
    (2..number).each do |no|
      if (2..no-1).all? {|num| no % num  > 0}
        puts no
      end
    end
  end

  def is_prime(number)
    m = number/2
    flag = 0
    (2..m).each do |n|
      if(number%n == 0)
        flag = 1
        break;
      end
    end
    if flag == 0
      return "Prime"
    else
      return "Not Prime"
    end
  end
end

puts Prime.new.get_prime(gets.chomp.to_i)

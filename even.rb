#an even number is an integer which is evenly divisible by two. this means that if the integer is divided by two, it yields no remainder ... zero is an even number because zero divided by two equals to zero. which despite not being a natural number, is an integer
class Even
  def is_even(number)
    check = number%2 == 0 ? true : false
    return check ? "Is Even" : "Not Even"
  end

  def even_range(number)
    arr = []
    (0..number).each do |n|
      if n%2 == 0
        arr << n
      end
    end
    return arr
  end
end

puts Even.new.even_range(gets.chomp.to_i)

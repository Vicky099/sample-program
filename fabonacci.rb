#a series of number in which each number is the sum of the two preceding numbers.
class Fabonacci
  def fab(n)
    return n if n == 0
    a = 0
    b = 1
    c = 0
    (2..n).each do
      c = a+b
      a = b
      b = c
    end
    return b
  end

  def rec_fab(n)
    return n if (0..1).include?(n)
    (rec_fab(n-1)+rec_fab(n-2))
  end
end
f = Fabonacci.new.rec_fab(gets.chomp.to_i)
puts f

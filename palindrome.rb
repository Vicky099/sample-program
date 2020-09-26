#check string in reverse order and check with original ones. if string is similar then string is a palindrome
class Palindrome

  def is_palindrome(string)
    string.downcase!
    reversed = ""
    count = string.length

    while count > 0
      count -= 1
      reversed += string[count]
    end

    if string == reversed
      return "Is Palindrome"
    else
      return "Not Palindrome"
    end
  end

  def with_fun(string)
    if string.reverse.downcase == string.downcase
      return "Is Palindrome"
    else
      return "Not Palindrome"
    end
  end
end
puts 'Please enter string: '
puts Palindrome.new.is_palindrome(gets.chomp.to_s)

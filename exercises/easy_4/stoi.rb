DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
  }

def string_to_integer(num)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each {|digit| value = 10 * value + digit }
  value
end


string_to_integer('4321') == 4321
string_to_integer('570') == 570

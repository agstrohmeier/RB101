def factors(number)
  if number > 0
    divisor = number
    factors = []
    begin
      factors << number / divisor if number % divisor == 0
      divisor -= 1
    end until divisor == 0
    p factors
  else
    puts "Please enter a number greater than zero."
  end

end

factors(-9)

factors(21)

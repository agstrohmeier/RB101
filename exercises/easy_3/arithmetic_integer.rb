puts "Enter the first number:"
num1 = gets.to_i

puts "Enter the second number:"
num2 = gets.to_i

sum = num1 + num2
difference = num1 - num2
product = num1 * num2
quotient = num1 / num2

puts num1.to_s  + " + " + num2.to_s + ' = ' + sum.to_s
puts num1.to_s  + " - " + num2.to_s + ' = ' + difference.to_s
puts num1.to_s + " * " + num2.to_s + ' = ' + product.to_s
puts num1.to_s + " / " + num2.to_s + ' = ' + quotient.to_s

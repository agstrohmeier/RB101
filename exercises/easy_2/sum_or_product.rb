puts "Please enter an integer greater than 0."
integer1 = gets.to_i
arr = [*1..integer1]

puts "Enter 's' to compute the sum, or 'p' to compute the product."
operation = gets.chomp


puts "The " + (operation == "s" ? "sum" : "product") + "of the integers between 1 and " +
integer1.to_s + " is " + (operation == "s" ? arr.sum.to_s : arr.reduce(:*).to_s)

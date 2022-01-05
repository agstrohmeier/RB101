numbers = []

5.times do
  puts "Enter a number"
  numbers << gets.chomp.to_i
end
p "The number " + numbers[4].to_s + (numbers[0..3].bsearch {|x| x ==numbers[4]} ? " does" : " does not") + " appear in the array " + numbers.to_s

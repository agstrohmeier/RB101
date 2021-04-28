#calculator_own_attempt.rb

#Get two numbers from the user
first_num = ""
loop do
  puts "Enter the first non-zero integer:"
  first_num = Kernel.gets.chomp.to_i
  break if first_num != 0 && first_num.class == Integer
  puts "Please enter a different number."
end

second_num = ""
loop do
  puts "enter the second non-zero integer:"
  second_num = Kernel.gets.chomp.to_i
  break if second_num != 0 && second_num.class == Integer
  puts "Please enter a different number."
end

#Ask for the type of operation
operation = ""
loop do
  puts "Enter an operation: Add, Subtract, Multiply, or divide:"
  operation = Kernel.gets.chomp
  break if operation == "add" || operation == "subtract" || operation == "multiply" || operation == "divide"
  puts "Please pick one of the supplied operations."
end

case
  when operation == "add"
    puts "#{first_num} + #{second_num} = #{first_num + second_num}"
  when operation == "subtract"
    puts "#{first_num} - #{second_num} = #{first_num - second_num}"
  when operation == "multiply"
    puts "#{first_num} * #{second_num} = #{first_num * second_num}"
  when operation == "divide"
    puts "#{first_num} / #{second_num} = #{first_num.to_f / second_num = second_num.to_f}"
end

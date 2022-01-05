SQMETERS_TO_SQFEET = 10.7639

puts "What is the length of the room in meters?"
length = gets.to_f

puts "What is the width of the room in meters?"
width = gets.to_f

puts "The area of the room in square meters is " + (length * width).to_s + "."

puts "The area of the room in square feet is " + (length * width * SQMETERS_TO_SQFEET).to_s + "."

puts "What is the individual's name?"

name = gets.chomp
puts (name != "" ? name : "Teddy") + " is " + rand(20...200).to_s + " years old!"

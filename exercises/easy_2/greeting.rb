puts "What is your name?"
name = gets.chomp

puts (name[name.length-1] == "!") ? ("HELLO " + name.chop.upcase) : ("Hello " + name)

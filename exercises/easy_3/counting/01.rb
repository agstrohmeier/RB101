puts "Please write a word or multiple words:"
input = gets.chomp
sum = 0
input.each_char do |s|
  sum+= 1 if s.match?(/[^ ]/)
end
puts "there are " + sum.to_s + " characters in '" + input+ "'."

puts "what is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_f
tip_total = sprintf("%.2f", (tip_percentage * bill))
puts "The tip is $" + tip_total
bill_total = sprintf("%.2f", (bill*tip_percentage + bill))
puts "The total is $" + bill_total

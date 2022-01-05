puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i

years_to_retirement = retirement_age - age
current_year = Time.now.year
retirement_Year = current_year + years_to_retirement

puts "The year is " + current_year.to_s + ". You will retire in " +retirement_Year.to_s

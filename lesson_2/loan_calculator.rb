# loan_calculator.rb

require "pry"

# method to validate user input as a number
def number?(input)
  integer?(input) || float?(input)
end

# method to validate user input as an integer
def integer?(input)
  /^-?\d+$/.match(input)
end

# method to validate user input as afloat
def float?(input)
  /\d/.match(input) && /^-?\d*\.?\d*$/.match(input)
end

# First get inputs from the user.

# loan amount
loan_amount = ""
loop do
  puts "Please enter the loan amount."
  loan_amount = gets.chomp
  break if number?(loan_amount)
  puts "Format not valid; please enter an integer"
end

# APR
apr = ""
apr_monthly = ""
loop do
  puts "Please enter the Annual Percentage Rate"
  apr = gets.chomp
  apr_monthly = apr.to_f / 12
  break if number?(apr) && apr.to_f < 1
  puts "Format not valid; please enter a value between 0 and 1."
end

# Loan duration
loan_duration = ""
loop do
  puts "Please enter a loan duration in months."
  loan_duration = gets.chomp
  break if number?(loan_duration)
  puts "Format not valid; please enter number of months"
end

# Calculate monthly payment
monthly_payment = loan_amount.to_f * (apr_monthly.to_f / (1 - (1 + apr_monthly.to_f)**(-loan_duration.to_i)))
puts monthly_payment

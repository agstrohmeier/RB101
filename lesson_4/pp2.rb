ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# sum = 0
# ages.each do |key, value|
#   sum = sum +  value
# end
#
# puts sum

puts ages.values.inject(:+)

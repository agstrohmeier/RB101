ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# smallest = nil
# ages.each do |key, value|
#   if smallest == nil
#     smallest = value
#   elsif value < smallest
#     smallest = value
#   end
# end
smallest = ages.values.min

puts smallest

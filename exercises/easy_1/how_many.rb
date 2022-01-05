# My attempt
# def count_occurrences (vehicles_array)
#   vehicles = Hash.new
#   vehicles_array.each do |vehicle|
#     if vehicles.has_key?(vehicle)
#       vehicles[vehicle] = vehicles[vehicle] + 1
#     else
#       vehicles[vehicle] = 1
#     end
#   end
#   puts vehicles
# end

# Launch Solution
def count_occurrences(array)
  occurrences = {}

  array.uniq.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |element, count|
    puts "#{element} => #{count}"
  end
end



vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

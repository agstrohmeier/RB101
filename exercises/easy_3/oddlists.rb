def oddities(arr)
  returnarr = []
  arr.each_index do |index|
    if index%2<1
      returnarr << arr[index]
    end
  end
  returnarr
end

puts oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
puts oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
puts oddities(['abc', 'def']) == ['abc']
puts oddities([123]) == [123]
puts oddities([]) == []

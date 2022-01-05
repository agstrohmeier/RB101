require 'pry'

def reverse!(arr)
  i = 0
  loop do
    break if i >= arr.length - i
    elem01 = arr[i]
    elem02 = arr[arr.length - i - 1]
    arr[i] = elem02
    arr[arr.length - i - 1] = elem01
    i += 1
  end
  arr
end

list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true

arr = ['10', '11', '9', '7', '8']

arr.sort! do |a, b|
  a = a.to_i
  b = b.to_i
  b <=> a
end
p arr

# def is_odd?(integer)
#   if integer % 2 == 0
#     return false
#   else
#     return true
#   end
# end

# def is_odd?(integer)
#   return false if integer % 2 != 0
#   return true if integer % 2 == 0
# end

def is_odd?(integer)
  integer % 2 == 1
end

puts is_odd?(2)
puts is_odd?(5)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)
puts is_odd?(7)

# def multisum(num)
#   sum = 0
#   for a in 1..num do
#     if a % 3 == 0 || a % 5 == 0
#       sum = sum + a
#     end
#   end
#   sum
# end



p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168

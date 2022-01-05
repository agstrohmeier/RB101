def multiply(num1, num2)
  num1*num2
end

def square(n, power)
  result = n
  (power-1).times do
    p result
    result = multiply(n, result)
  end
  result
end

p square(5, 3)
p square(8, 4)

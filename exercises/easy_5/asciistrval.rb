def ascii_value (str)
  arr = str.split("")
  sum = 0
  for a in 1..arr.length do
    sum = sum + arr[a-1].ord
  end
  sum
end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

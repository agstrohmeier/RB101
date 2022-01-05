def find_fibonacci_index_by_length(num)
  fib_arr = [1, 1]
  fib_count = 2
  loop do
    fib_arr[fib_count] = fib_arr[fib_count - 1] + fib_arr[fib_count - 2]
    fib_count += 1
    break if fib_arr[fib_count - 1].to_s.length == num
  end
  return fib_count
end

p find_fibonacci_index_by_length(2)       # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3)      # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10)
p find_fibonacci_index_by_length(100)
p find_fibonacci_index_by_length(1000)
p find_fibonacci_index_by_length(10000)


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847

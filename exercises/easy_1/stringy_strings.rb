def stringy(number, start_value=1)
  results = []
  number.times do |index|
    if start_value == 1
      result = index.even? ? 1:0
    elsif start_value == 0
      result = index.odd? ? 1:0
    end
    results << result
  end

  p results.join
end


puts stringy(6) == '101010'
puts stringy(9, 0) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

def reverse_words(sentence)
  sentence = sentence.split
  i = 0
  loop do
    sentence[i].reverse! if sentence[i].length > 5
    i += 1
    break if i >= sentence.size
  end
  sentence.join(" ")
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

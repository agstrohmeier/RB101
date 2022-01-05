def titalize (str)
  str = str.split
  str.each do |word|
    word.capitalize!
  end
  str = str.join(' ')
  p str
end


words = "the flintstones rock"

titalize (words)

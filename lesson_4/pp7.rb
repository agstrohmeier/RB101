statement = "The Flintstones Rock"

statement = statement.split('')

numhash = Hash.new

statement.each do |element|
  if numhash[element] != nil
    numhash[element] = numhash[element] + 1
  else
    numhash[element] = 1
  end
end

p numhash

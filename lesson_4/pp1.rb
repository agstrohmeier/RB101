flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
flinthash = Hash.new
flintstones.each_with_index {|name, index| flinthash[name] = index}

p flinthash

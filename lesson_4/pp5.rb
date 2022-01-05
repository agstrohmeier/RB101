flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# i = -1
# index = ""
# flintstones.each do |value|
#   i = i + 1
#   break if value[0..1] == "Be"
# end

puts flintstones.index {|name| name[0, 2] == "Be"}

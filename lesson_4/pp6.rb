flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! {|value| value[0..2]}

puts flintstones

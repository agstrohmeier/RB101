arr1 = [1, [2, 3], 4]

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]

hsh1 = {first: [1, 2, [3]]}

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}

arr1a = arr1.map do |a|
  if a.class == Array
    a.map! { |b| b == 3 ? 4 : b }
  end
  a == 3? 4:a
end
p arr1a

arr2a = arr2.map do |a|
  if a.class == Hash
      a.map do |key, value|
        if value.class == Array
          value.map! { |c| c == 3 ? 4 : c}
        end
        value == 3  ? 4 : value
      end
  else
    a == 3 ? 4 : a
  end
end
p arr2a

hsh1a = hsh1[:first].map { |value | value[0] == 3 ? 4 : value}
p hsh1a


hsh2a = hsh2.map do |key, value|
  if value == Hash
    value.map do |key2, value2|
      if value2 == Array
        value2.map {|v| v == 3 ? 4 : v}
      else
        v == 3 ? 4 : v
      end
    end
    value == 3 ? 4 : value
  end
end
p hsh2a

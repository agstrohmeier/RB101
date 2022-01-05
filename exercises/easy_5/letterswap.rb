# def swap (str)
#   arr = str.split(' ')
#   for a in 0...arr.length do
#     first = arr[a][0]
#     last = arr[a][arr[a].length-1]
#     arr[a][0] = last
#     arr[a][arr[a].length-1] = first
#   end
#   arr.join(' ')
# end

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')

end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

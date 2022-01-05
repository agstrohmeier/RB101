def print_in_box(str)
  width = str.length
  p '+-' + '-' * width + '-+'
  p '| ' + ' ' * width + ' |'
  p '| ' + str + ' |'
  p '| ' + ' ' * width + ' |'
  p '+-' + '-'*width + '-+'
end


print_in_box('To boldly go where no one has gone before.')


print_in_box('')

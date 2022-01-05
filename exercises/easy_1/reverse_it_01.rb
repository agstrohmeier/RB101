def reverse_it (sentence)
  sentence.split(" ").reverse.join(" ")
end

p reverse_it("test sentence one")
p reverse_it("this is the second test sentence")

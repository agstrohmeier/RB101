def xor? (inp1, inp2)
  if (inp1 == false && inp2 == false) || (inp1 ==true && inp2 == true)
    return false
  else
    return true
  end
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

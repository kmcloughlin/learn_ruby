def ftoc(temp)
  ((temp.to_f - 32.0) * 5 / 9).round(1)
end

def ctof(temp)
  ((temp.to_f) * 9 / 5 + 32).round(1)
end

def balanced?(string)
  innerBalance(head(string), tail(string), 1) == 1
end

def shift(char, center)
  case char
  when '('; center << 1
  when ')'; center >> 1
  else; center 
  end
end

def head(list)
  list[0]
end

def tail(list)
  list[1..-1]
end

def innerBalance(char, rest, center)
  return shift(char, center) if rest.empty?
  innerBalance(head(rest), tail(rest), shift(char, center))
end

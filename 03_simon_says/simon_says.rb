def echo(x)
  return x
end

def shout(x)
  return x.upcase
end

def repeat(x,c=1)
  buf=""
  if c == 1 
    return x + " " + x
  end

  for m in (1..c-1) do
    buf = buf + x + " "
  end
  buf = buf + x
  return buf
end

def start_of_word(x,c=1)
  if c == 1
    return x[0]
  end
  buf=""
  for l in (0..c-1) do
    buf = buf + x[l]
  end
  return buf
end

def first_word(x)
  return x.split(" ")[0]
end

def titleize(x)
  little_words=["is","and","was","were","in","or","the","of","over","under","with"]
  buf=[]
  pos=0
  for t in x.split(" ") do
    if little_words.include?(t)
      if pos == 0
        buf.append(t.capitalize)
      else
        buf.append(t)
      end
    else
      buf.append(t.capitalize)
    end
    pos = pos + 1
  end
  return buf.join(" ")
end

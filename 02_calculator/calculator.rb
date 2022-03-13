def add(a,b)
  return a+b
end

def subtract(a,b)
  return a-b
end

def sum(aa)
  tally=0
  for a in aa do
    tally = tally + a
  end
  return tally
end

def multiply(a=1,b=1)
  tally = 1
  # If the first param is an array, ignore second param
  if a.class == [].class
    for t in a do
      tally = tally * t
    end
  else
    tally = a * b
  end
  return tally
end

def power(a,b)
  return a**b
end

def factorial(a)
  tally = 1
  for f in (1..a) do
    tally = tally * f
  end
  return tally
end

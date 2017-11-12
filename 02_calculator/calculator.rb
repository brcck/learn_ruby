def add(a, b) 
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  total = 0
  array.each { |x| total += x }
  total
end

def multiply(*args)
  total = 1
  args.each { |x| total *= x }
  total
end

def power(a,b)
  a**b
end

def factorial(n)
  total = 1
  (1..n).each do |i|
    total *= i
  end
  total
end

def add(num1, num2)
  result = num1 + num2
  puts " #{num1} + #{num2} = #{result}"
end

def subtract(num1, num2)
  result = num1 - num2
  puts " #{num1} - #{num2} = #{result}"
end

def multiply(num1, num2)
  result = num1 * num2
  puts " #{num1} * #{num2} = #{result}"
end

def divide(num1, num2)
  result = num1 / num2
  puts " #{num1} / #{num2} = #{result}"
end

def compute
  puts "Enter first number: "
  num1 = gets.chomp.to_i
  puts "Enter second number: "
  num2 = gets.chomp.to_i
  add(num1, num2)
  subtract(num1, num2)
  multiply(num1, num2)
  divide(num1, num2)
end

compute
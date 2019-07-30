# def fizzbuzz
#   numbers = (1..100).to_a
#   numbers.map {|x| x % 15 == 0 ? 'FizzBuzz' : x}
#   numbers.map {|x| x % 3 == 0 ? 'Fizz' : x} 
#   numbers.map {|x| x % 5 == 0 ? 'Buzz' : x}
#   puts numbers  
# end

def fizzbuzz 
  numbers = (1..100).to_a
  numbers.each {|num| 
  if num % 15 == 0
  puts "FizzBuzz"
  elsif num % 3 == 0
  puts "Fizz"
  elsif num % 6 == 0
  puts "Buzz"
  else
  puts num
  end
  }

end

fizzbuzz
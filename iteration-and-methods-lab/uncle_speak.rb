def uncle_speak
  puts "Type a sentence:"
  input = gets.chomp
  input_array = input.split(" ")
  input_array.each_with_index {|val, index|
  if index % 2 != 0
  puts val.downcase
  else
  puts val.upcase
  end }
end

uncle_speak
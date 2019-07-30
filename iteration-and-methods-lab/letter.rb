def letter_guesser
  letters = ("a".."z").to_a
  number = rand(letters.length)
  puts "Your letter is #{letters[number]}. Guess #{letters[number]}\'s index number."
  guess = gets.chomp.to_i - 1
  if guess == number
    puts "Whoa! You\'re like a genius when it comes to the alphabet!"
  else 
    puts "You lose! Looks like you need to learn your ABC\'s. The index of #{letters[number]} is actually #{number+1}."
  end
end

letter_guesser
class Word
  attr_accessor :word_array, :word_underscore, :word_output, :guessed_correct_letters
  def initialize(word)
    @word_array = word.split("")
    @word_underscore = @word_array.map { |x| "_" }
    @word_output = @word_underscore.join("")
    @guessed_correct_letters = []
  end

  def guess?(letter)   
    found = false
    if @word_array.include?(letter)
      puts "You got a right letter!"
      @guessed_correct_letters << letter
      found = true
    else 
      puts "Oops, wrong letter. guess again."
    end
     
    @word_underscore = @word_array.map { |x| @guessed_correct_letters.include?(x) ?  x : "_" }
    @word_output = @word_underscore.join("")
    found
  end
  
  def guessed_all_correct?
    @word_output.include?("_") != true
  end

  def output_word
    @word_array.join("")
  end
end

class MysteryWordGame
  def initialize
    @remaining_life = 3
    ask_for_word
    game_loop
  end

  def ask_for_word
    puts "Provide a word: "
    word = gets.chomp
    @word = Word.new(word)
  end

  def game_loop     
    loop do  
      puts "The word is #{@word.word_output}."
      puts "You have #{@remaining_life} more guesses."
      puts "guess a letter?"
      letter = gets.chomp
      guessing = @word.guess?(letter)
      if guessing == false
        @remaining_life -= 1
      end
      if @remaining_life == 0 
        puts "Out of life!"
        break
      end
      if @word.guessed_all_correct?
        puts "YOU GOT IT! YOU ARE THE SH*T."
        @word.output_word
        break
      end
    
    end
  end
  
end

newgame = MysteryWordGame.new
newgame
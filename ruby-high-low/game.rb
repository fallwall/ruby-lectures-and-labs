# write the game logic here!

class Deck
  attr_accessor :deck

  def initialize
    @suits = ['spades', 'hearts', 'diamonds', 'clubs']
    @ranks = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
    @deck = []
  end

  def build_deck
    @suits.each do |suit|
      @ranks.each_with_index do |rank, index|
        @deck.push({:suit => suit, :rank => rank, :value => index + 1})
      end
    end
    @deck.shuffle!
  end

end

class HighLow
  def initialize
    @shuffledDeck = Deck.new
    @deck = @shuffledDeck.build_deck
    @name = greet
    @score = 0
    game_loop
  end

  def greet
    puts "Hallo! Wie heißt du?"
    name = gets.chomp
    name
  end

  def guess?(card1, card2)
    correctness = false
    puts "Current card is #{card1[:rank]} of #{card1[:suit]}."
    puts "Will your next card be higher(h) or lower(l)?"
    input = gets.chomp
      diff = card1[:value] - card2[:value]
      if input == 'h' && diff < 0
        correctness = true
      elsif input == "l" && diff > 0
        correctness = true
      end
    correctness
  end

  def game_loop
    currentCard = @deck.pop()
    while @score < 5 || @deck.length > 0
      nextCard = @deck.pop
      if guess?(currentCard, nextCard);
        @score += 1
        puts "Awesome. Your score is now #{@score}."
      else 
        puts "Bummer. Nope."
      end
      puts "next card is #{nextCard[:rank]} of #{nextCard[:suit]}."
      puts ""
      currentCard = nextCard
      if @score >=5
        break
      end
    end
    puts "You are a winner, #{@name}."
  end
end

newGame = HighLow.new
newGame
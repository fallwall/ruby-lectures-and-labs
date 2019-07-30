Transaction = Struct.new(:amount, :type)

class Atm
  def initialize(type)
    @money = 0
    @type = type
    @transaction_history = []
  end
  def show_balance
    puts "The balance is: #{@money}"
  end

  def withdraw(amt)
    trans = Transaction.new(amt, "debit")
    @transaction_history.push(trans)
    @money -= amt
  end
  def deposit(amt)
    trans = Transaction.new(amt, "credit")
    self.transaction_history.push(trans)
    @money += amt
  end

  private
  attr_accessor :money, :type, :transaction_history
end
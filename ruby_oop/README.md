# Make an ATM Class


### Setup

For this exercise you will be creating an ATM class.

First, make an `atm.rb` file, and open it in a text editor.

Define an Atm class like so

```ruby
class Atm
end
```

Now open a terminal _in the same directory as the `atm.rb` file_.  You can load the Atm class into pry with the following command:

```
require './atm'
```

Go ahead and instantiate an instance of the `Atm` class in pry with:

```
atm = Atm.new
```

Live coding for the win!

Our teller can't do very much right now so you'll add some functionality below.  If you want to reload the changes made in the editor, you can `load` the file again like so:

```ruby
load './atm.rb'
```

*Notice:* The `load` command requires a `.rb` extension whereas the `require` command does not.  Both accept relative paths.

### Down to business

Our Atm class will have the following instance variables

* `type` (e.g., "checking"), which should be determined by some input
* `money`, which should start out as `0`

Try not to over-expose an instance variable if you don't need to

It should have the following methods...

* `withdraw`, which should decrease the amount of money by some input
* `deposit`, which should increase the amount of money by some input
* `show_balance`, which should print the amount of money in the bank to the console.

The `Atm` class has a `transaction_history` property which keeps track of the withdrawals and deposits made to the account.
* Make sure to indicate whether the transaction increased or decreased the amount of money in the bank.  (Hint: Consider using a `Hash` for the transaction history items)

#### Bonus 1

One of the advantages of OOP is the ability to extract out pieces of data and behavior into small units.  Are there any potential parts of the ATM class that could be extracted into their own class?  Perhaps the transaction_history could be refactored into a separate class. 

Alternatively check out Ruby's [*Struct*](https://ruby-doc.org/core-2.5.1/Struct.html) class and try to use `Struct`s for the transaction history items.

##### Bonus 1.5

Floating point arithmetic can be messy, as you know.  Imprecision isn't exactly a virtue when it comes to writing software dealing with money.  Look up the [`Money` gem](https://github.com/RubyMoney/money) and try to use it for our ATM class


#### Bonus 2

Give the `Atm` class a `backupAccount` property that can, optionally, contain a reference to another instance of the class, determined by some input
* Whenever an ATM's balance goes below zero, it will remove money from the instance stored in `backupAccount` so that its balance goes back to zero.
* This should trigger a withdrawal in the back up account equal to the amount of money that was withdrawn from the original account.
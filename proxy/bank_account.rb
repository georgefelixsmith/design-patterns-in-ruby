class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def deposit(ammount)
    @balance += ammount
  end

  def withdraw(amount)
    @balance -= amount
  end
end

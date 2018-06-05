class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name= name
    @balance= 1000
    @status= 'open'
  end

  def deposit(amount)
    self.balance += amount
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    binding.pry
    true if (self.status=='open' and self.balance>0) else false
  end
end

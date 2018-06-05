class BankAccount
  attr_accessor :name
  attr_reader :balance

  def initialize(name)
    @name= name
    @balance= 1000
  end
end

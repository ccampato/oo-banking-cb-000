class BankAccount
  attr_accessor :name, :status
  attr_reader :balance

  def initialize(name)
    @name= name
    @balance= 1000
    @status=open
  end
end

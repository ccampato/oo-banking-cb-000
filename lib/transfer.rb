class Transfer
  attr_accessor :sender, :receiver, :status, :amount

  def initialize(sender, receiver, amount)
    @sender= sender
    @receiver= receiver
    @status= 'pending'
    @amount= amount
  end

  def valid?
    if sender.valid? and receiver.valid?
      true
    else
      false
    end
  end

  def execute_transaction
    if self.valid?
      sender.balance.freeze -= amount
      receiver.balance += amount
      @status= 'complete'
    else
      @status= 'rejected'
    end
  end

end

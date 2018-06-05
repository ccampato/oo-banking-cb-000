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
    until @status == 'complete'
      sender.balance -= amount
      receiver.balance += amount
      @status= 'complete'
    end

    if !self.valid?
      @status= 'rejected'
      "Transaction rejected. Please check your account balance."  
    end
  end

end

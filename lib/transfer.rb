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
      self.valid?

      if self.valid?
        sender.balance -= amount
        receiver.balance += amount
        @status= 'complete'
      else
        "Transaction rejected. Please check your account balance."
        @status= 'rejected'
      end

    end
  end

end

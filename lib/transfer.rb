class Transfer
  
  attr_reader :sender, :receiver
  attr_accessor :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    if valid? && self.status == "pending" && sender.balance > amount
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else
      "Transaction rejected. Please check your account balance."
      self.status = "rejected"
    end
  end
end

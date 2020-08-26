class Transfer
  
  attr_reader :sender, :sendee
  attr_accessor :amount
  
  def initialize(sender, sendee, amount)
    @sender = sender
    @sendee = sendee
    @amount = amount
  end
end

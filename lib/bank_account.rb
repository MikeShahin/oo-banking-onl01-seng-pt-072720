class BankAccount

  attr_reader :name
  attr_accessor :balance, :status
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(amount)
    @balance += amount
  end
  
  def display_balance
    "Your balance is $#{@balance}."
  end
  
  def valid?
    if self.status == "open" && self.balance > 0
      return true
    else
      false
    end
  end
  
  def close_account
    self.name = nil
    self.balance = nil
    self.status = "closed"
  end
end

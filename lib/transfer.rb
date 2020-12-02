class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    sender.valid? && receiver.valid? && sender.balance >= self.amount
  end

  def execute_transaction
    if self.valid?
      sender.balance -= amount
      receiver.balance += amount 
      self.status = "complete"
    else !self.valid?
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer
    binding.pry
    sender.balance += amount
    receiver.balance -= amount
    
  end
end

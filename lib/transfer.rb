class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  
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
    sender.balance -= amount if self.valid?
    receiver.balance += amount if self.valid?
    self.status = "complete"
    self.amount = 0
  end
end

class Transfer
  attr_accessor :name, :sender, :receiver
  
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
  end
  
  
end

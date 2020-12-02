class Transfer
  attr_accessor :name, :sender, :receiver
  
  
  def initialize(name, sender, receiver)
    @name = name
    @sender = sender
    @receiver = receiver
    binding.pry
  end
  
  
end

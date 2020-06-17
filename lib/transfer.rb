class Transfer
  
attr_accessor :sender, :receiver, :status 

  def initialize(sende, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

end

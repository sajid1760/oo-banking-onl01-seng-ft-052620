class Transfer
  
attr_accessor :sender, :receiver, :status 

  def initialize(sende, receiver)
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end

end

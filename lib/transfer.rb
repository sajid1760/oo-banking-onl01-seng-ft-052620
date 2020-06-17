class Transfer
  
attr_accessor :sender, :receiver, :status 

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

 def valid?
   self.sender.valid? && self.receiver.valid?
 end

 def execute_transaction
   sender.deposit(0 - amount)
   receiver.deposit(amount)

end

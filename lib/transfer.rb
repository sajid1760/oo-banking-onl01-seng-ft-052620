class Transfer
  
attr_accessor :sender, :receiver, :status, :amount 

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
   if @status = "pending" then
     sender.deposit(0 - @amount)
     receiver.deposit(@amount)
   end
   self.status = "complete"
 end
 
 def reverse_transfer
   if @status = "complete" then
     receiver.deposit(0 - @amount)
     sender.deposit(@amount)
   end
   self.status = "pending"
 end
 
end
 
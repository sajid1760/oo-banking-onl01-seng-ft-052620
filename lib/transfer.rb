class BankAccount

attr_reader   :name
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
  if (self.status == "open" && self.balance > 0) then TRUE else FALSE end
end

def close_account
  self.status = "closed"
end

end

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
   if @status == "pending" then
     
     if (sender.valid? && sender.balance > @amount) then
       sender.deposit(0 - @amount)
       receiver.deposit(@amount)
       @status = "complete"
       returnvalue = "complete"
     else
       @status = "rejected"
       returnvalue = "Transaction rejected. Please check your account balance."
     end
     
   end
   puts returnvalue 
   puts sender.balance 
   puts receiver.balance
 end
 
 def reverse_transfer
   if @status == "complete" then
     receiver.deposit(0 - @amount)
     sender.deposit(@amount)
   end
   @status = "reversed"
 end
 
end
 
amanda = BankAccount.new(amanda)
terrance = BankAccount.new(terrance)
terrance.close_account
puts amanda.status
puts terrance.status
closed_account_transfer = Transfer.new(amanda, terrance, 50)
closed_account_transfer.execute_transaction

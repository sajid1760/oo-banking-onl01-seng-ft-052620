class BankAccount

attr_accessor :name , :balance, :status

def initialize(name)
  @name = name
  @balance = 1000
  @status = "open"
end

def deposit(amount)
  @balance += amount
end

def display_balance
  @balance
end

def valid?
  if (self.status == "open" && self.balance > 0) then TRUE else FALSE end
end



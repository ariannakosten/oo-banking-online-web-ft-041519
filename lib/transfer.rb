class Transfer

  @@account = []
  
  attr_accessor :sender, :receiver, :amount, :status
 

def initialize(sender, receiver, amount = 50)
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = "pending"
  
  @@account << self
end

def valid?
  if @amount >= 50 || @status == "open"
     if sender.valid? && receiver.valid?
      true
    else
      false
    end
  end
end

def execute_transaction
#sender.balance -= amount || receiver.balance += amount
 if valid? && status == "pending"
      if amount < @sender.balance
        @sender.balance -= amount
        @receiver.balance += amount
        @status = "complete"
      else
    !(sender.valid?)
    @status == "rejected"
   "Transaction rejected. Please check your account balance."
end
end
end

def reverse_transfer
 
end
end

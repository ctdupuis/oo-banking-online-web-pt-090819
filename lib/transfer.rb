class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end
  
  def valid?
    @sender.valid? && @receiver.valid?
  end
  
  def execute_transaction
<<<<<<< HEAD
    if @sender.balance > @amount && @status == "pending" && valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else 
=======
    if @sender.balance > @amount && @status == "pending"
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
>>>>>>> 707cc952bbc1e1805863b0ca0d7870f95e231b34
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end
<<<<<<< HEAD
  
  def reverse_transfer
    if @status == "complete"
      @sender.balance += @amount
      @receiver.balance -= @amount
      @status = "reversed"
    end
  end
=======
>>>>>>> 707cc952bbc1e1805863b0ca0d7870f95e231b34
end

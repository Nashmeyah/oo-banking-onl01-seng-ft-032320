class Transfer
  attr_accessor :amount, :status
  attr_reader :sender, :receiver


  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
   true if sender.valid? == true && receiver.valid? == true
  end

  def execute_transaction
    if valid? 
      @sender.balance >amount
      @sender.balance - amount
      @receiver.balance +amount
    else
      "Transaction rejected. Please check your account balance"
    end
  end

  # def reverse_transfer
  #
  # end

end

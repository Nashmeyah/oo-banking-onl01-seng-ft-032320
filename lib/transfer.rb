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
    self.status == "open" && self.balance > 0
  end

  # def execute_transaction
  #
  # end
  #
  # def reverse_transfer
  #
  # end

end

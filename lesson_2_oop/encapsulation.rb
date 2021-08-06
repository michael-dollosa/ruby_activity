class Bank
  def initialize(name, amount)
    @name = name
    @amount = amount
  end

  #example of encapsulation is having methods that have logic hidden to user
  def deposit(deposit_amount)
    puts "Added #{deposit_amount} to your account"
    @amount+=deposit_amount
    puts "Account have #{@amount}"
  end

  def withdraw(withdraw_amount)
    return puts "Insufficient amount. Please deposit first" if withdraw_amount > @amount
    puts "Subtracted #{withdraw_amount} to your account"
    @amount-=withdraw_amount
    puts "Account have #{@amount}"
  end
end

sample_bank = Bank.new("BPI", 300)
sample_bank.deposit(200)
sample_bank.deposit(200)
sample_bank.withdraw(300)
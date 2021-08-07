#principle simply means that methods should be predictable - meaning it's easier to understand if it only does one thing

class Bank
  def initialize(account, amount)
    @account = account
    @amount = amount
  end

  #method below only has one purpose - to subtract or add from total amount
  def deposit(deposit_amount)
    @amount+=deposit_amount
    puts @amount
  end

  def withdraw(withdraw_amount)
    @amount-=withdraw_amount
    puts @amount
  end

end

sample_bank = Bank.new("Sample", 3000)
sample_bank.deposit(100)
sample_bank.withdraw(1000)
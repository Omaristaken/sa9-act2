require "BankAccount-class"


RSpec.describe BankAccount do
  describe "#deposit" do
    it "increases the balance by the deposit amount" do
      account = BankAccount.new(100)
      account.deposit(10)
      expect(account.balance).to eq(110)
    end
  end

  describe "#withdraw" do
    it "decreases the balance by the withdrawal amount if funds are available" do
      account = BankAccount.new(100)
      account.withdraw(20)
      expect(account.balance).to eq(80)
    end

    it "does not change the balance if insufficient funds" do
      account = BankAccount.new(100)
      account.withdraw(1000)
      expect(account.balance).to eq(100)
    end
  end

  describe "#balance" do
    it "returns the current balance" do
      account = BankAccount.new(100)
      expect(account.balance).to eq(100)
    end
  end

class BankAccount
  include ActiveModel::Model
  attr_accessor :acc_number, :acc_type, :acc_currency
  
  def initialize(account = {})
    if !account.empty?
      self.acc_number = account[:acc_number]
      self.acc_type = account[:acc_type]
      self.acc_currency = account[:acc_currency]
    end
  end
end
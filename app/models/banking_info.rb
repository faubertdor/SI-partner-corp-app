class BankingInfo
  include ActiveModel::Model
  attr_accessor :bank_name, :acc_manager, :street_address, :city, :state
  attr_accessor :country, :zip_code, :settlement_methods, :accounts
  # settlement_methods hash keys below
  # ACH, Wire, Draft, Check, Electronic_bill, Checkmatic, Reverse_wire_drawndown
  # Key pair with true or false value
  
  
  def initialize(info = {})
    self.settlement_methods = Hash.new(0)
    self.accounts = [] # Each account is hash
    if !info.empty?
      self.bank_name = info[:bank_name]
      self.acc_manager = info[:acc_manager]
      self.street_address = info[:street_address]
      self.city = info[:city]
      self.state = info[:state]
      self.country = info[:country]
      self.zip_code = info[:zip_code]
      self.settlement_methods = info[:settlement_methods]
    end
  end
end
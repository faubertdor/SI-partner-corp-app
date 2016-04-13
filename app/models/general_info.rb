class GeneralInfo < ActiveRecord::Base
  belongs_to :user
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  phony_normalize :cell_number, :landline_number, default_country_code: 'US'
  validates :cell_number, :landline_number, phony_plausible: true
  validates :landline_number, presence: true
  validates :corporate_name, :trade_name, :country_of_inc, :state_of_inc,
            :street_address,:city, :state, :zip_code, :country, :email,
            :tax_id, :nature_of_business, presence: true
end

class FxAndPayment < ActiveRecord::Base
  belongs_to :user
  validates :purpose, :currencies, :approx_trade_vol, :approx_monthly_nb,
            :approx_annual_vol, :countries_transf_to,
            :countries_transf_from, presence: true

  validates :approx_trade_vol, :approx_monthly_nb, :approx_annual_vol, numericality: true
end

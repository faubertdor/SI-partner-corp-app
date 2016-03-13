json.array!(@fx_and_payments) do |fx_and_payment|
  json.extract! fx_and_payment, :id, :purpose, :currencies, :approx_trade_vol, :approx_monthly_nb, :approx_annual_vol, :countries_trans_to, :countries_trans_from, :user_id
  json.url fx_and_payment_url(fx_and_payment, format: :json)
end

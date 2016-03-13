class CreateFxAndPayments < ActiveRecord::Migration
  def change
    create_table :fx_and_payments do |t|
      t.string :purpose
      t.string :currencies
      t.integer :approx_trade_vol
      t.integer :approx_monthly_nb
      t.integer :approx_annual_vol
      t.string :countries_transf_to
      t.string :countries_transf_from
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateGeneralInfos < ActiveRecord::Migration
  def change
    create_table :general_infos do |t|
      t.string :corporate_name
      t.string :trade_name
      t.string :country_of_inc
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country
      t.integer :landline_number
      t.integer :cell_number
      t.integer :fax_number
      t.string :email
      t.string :state_of_inc
      t.string :registration_number
      t.string :tax_id
      t.string :nature_of_business
      t.string :website
      t.boolean :money_services_business
      t.boolean :precious_stones_or_metals
      t.boolean :travel_or_tour_company
      t.boolean :public_company
      t.string :public_company
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

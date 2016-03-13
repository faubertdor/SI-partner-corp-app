class CreateBeneficialOwners < ActiveRecord::Migration
  def change
    create_table :beneficial_owners do |t|
      t.string :full_legal_name
      t.string :citizenship
      t.decimal :ownership_percentage
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country
      t.string :zip_code
      t.references :corporate_personnel, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

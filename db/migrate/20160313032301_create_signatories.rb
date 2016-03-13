class CreateSignatories < ActiveRecord::Migration
  def change
    create_table :signatories do |t|
      t.string :full_legal_name
      t.string :title
      t.date :dob
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country
      t.string :zip_code
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

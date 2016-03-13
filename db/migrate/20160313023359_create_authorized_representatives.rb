class CreateAuthorizedRepresentatives < ActiveRecord::Migration
  def change
    create_table :authorized_representatives do |t|
      t.string :full_legal_name
      t.string :occupation
      t.string :title
      t.date :dob
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

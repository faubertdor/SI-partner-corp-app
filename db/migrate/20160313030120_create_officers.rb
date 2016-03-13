class CreateOfficers < ActiveRecord::Migration
  def change
    create_table :officers do |t|
      t.string :full_legal_name
      t.string :title
      t.references :corporate_personnel, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

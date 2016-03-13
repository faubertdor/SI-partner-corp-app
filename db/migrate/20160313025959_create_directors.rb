class CreateDirectors < ActiveRecord::Migration
  def change
    create_table :directors do |t|
      t.string :full_legal_name
      t.string :occupation
      t.references :corporate_personnel, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreatePoliticallyExposedPeople < ActiveRecord::Migration
  def change
    create_table :politically_exposed_people do |t|
      t.string :name
      t.string :title
      t.string :position_held
      t.date :from
      t.date :to
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

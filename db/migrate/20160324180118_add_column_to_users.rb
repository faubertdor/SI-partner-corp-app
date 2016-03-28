class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_app_complete, :boolean, default: false
  end
end

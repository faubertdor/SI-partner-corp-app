class AddColumnsToCorporatePersonnels < ActiveRecord::Migration
  def change
    add_column :corporate_personnels, :no_ind_own_25_or_more, :boolean
    add_column :corporate_personnels, :no_other_ind_own_25_or_more, :boolean
    add_column :corporate_personnels, :owned_by_pub_trade, :boolean
  end
end

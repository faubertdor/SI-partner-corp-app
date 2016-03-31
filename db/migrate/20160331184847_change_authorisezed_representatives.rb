class ChangeAuthorisezedRepresentatives < ActiveRecord::Migration
  change_table :authorized_representatives do |t|
    t.remove :occupation
    t.string :email
  end
end

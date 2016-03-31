class ChangeGeneralInfos < ActiveRecord::Migration
  change_table :general_infos do |t|
      t.remove :fax_number, :registration_number, :precious_stones_or_metals,
      :travel_or_tour_company, :public_company
  end
end

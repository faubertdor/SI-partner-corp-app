json.array!(@general_infos) do |general_info|
  json.extract! general_info, :id, :corporate_name, :trade_name, :country_of_inc, :street_address, :city, :state, :zip_code, :country, :landline_number, :cell_number, :fax_number, :email, :state_of_inc, :registration_number, :tax_id, :nature_of_business, :website, :money_services_business, :precious_stones_or_metals, :travel_or_tour_company, :public_company, :public_company, :user_id
  json.url general_info_url(general_info, format: :json)
end

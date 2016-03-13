json.array!(@beneficial_owners) do |beneficial_owner|
  json.extract! beneficial_owner, :id, :full_legal_name, :citizenship, :ownership_percentage, :street_address, :city, :state, :country, :zip_code, :corporate_personnel_id
  json.url beneficial_owner_url(beneficial_owner, format: :json)
end

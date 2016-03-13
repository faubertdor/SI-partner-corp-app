json.array!(@authorized_representatives) do |authorized_representative|
  json.extract! authorized_representative, :id, :full_legal_name, :occupation, :title, :dob, :street_address, :city, :state, :country, :zip_code, :corporate_personnel_id
  json.url authorized_representative_url(authorized_representative, format: :json)
end

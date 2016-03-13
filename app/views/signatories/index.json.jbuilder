json.array!(@signatories) do |signatory|
  json.extract! signatory, :id, :full_legal_name, :title, :dob, :street_address, :city, :state, :country, :zip_code, :user_id
  json.url signatory_url(signatory, format: :json)
end

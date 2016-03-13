json.array!(@officers) do |officer|
  json.extract! officer, :id, :full_legal_name, :title, :corporate_personnel_id
  json.url officer_url(officer, format: :json)
end

json.array!(@directors) do |director|
  json.extract! director, :id, :full_legal_name, :occupation, :corporate_personnel_id
  json.url director_url(director, format: :json)
end

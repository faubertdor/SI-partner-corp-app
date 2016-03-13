json.array!(@corporate_personnels) do |corporate_personnel|
  json.extract! corporate_personnel, :id
  json.url corporate_personnel_url(corporate_personnel, format: :json)
end

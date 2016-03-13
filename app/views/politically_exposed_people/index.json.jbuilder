json.array!(@politically_exposed_people) do |politically_exposed_person|
  json.extract! politically_exposed_person, :id, :name, :title, :position_held, :from, :to, :user_id
  json.url politically_exposed_person_url(politically_exposed_person, format: :json)
end

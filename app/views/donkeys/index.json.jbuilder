json.array!(@donkeys) do |donkey|
  json.extract! donkey, :id, :name, :owner_id, :dob, :breed_id, :med_cond
  json.url donkey_url(donkey, format: :json)
end

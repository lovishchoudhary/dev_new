json.array!(@grounds) do |ground|
  json.extract! ground, :id, :ground_id, :ground_name, :ground_description, :sc_id
  json.url ground_url(ground, format: :json)
end

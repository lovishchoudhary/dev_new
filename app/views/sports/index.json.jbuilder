json.array!(@sports) do |sport|
  json.extract! sport, :id, :sports_id, :sports_name
  json.url sport_url(sport, format: :json)
end

json.array!(@facilities) do |facility|
  json.extract! facility, :id, :sc_id, :refreshment, :parking, :sports_shop
  json.url facility_url(facility, format: :json)
end

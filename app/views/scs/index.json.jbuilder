json.array!(@scs) do |sc|
  json.extract! sc, :id, :scs_id, :city_id, :sc_name, :sc_location
  json.url sc_url(sc, format: :json)
end

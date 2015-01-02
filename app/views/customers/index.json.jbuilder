json.array!(@customers) do |customer|
  json.extract! customer, :id, :customer_id, :customer_name, :customer_email, :customer_phone, :customer_location
  json.url customer_url(customer, format: :json)
end

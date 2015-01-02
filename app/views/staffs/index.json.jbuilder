json.array!(@staffs) do |staff|
  json.extract! staff, :id, :staff_id, :staff_name, :staff_email, :staff_phone, :sc_id
  json.url staff_url(staff, format: :json)
end

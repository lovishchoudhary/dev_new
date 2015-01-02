json.array!(@bookings) do |booking|
  json.extract! booking, :id, :booking_id, :slot_id, :customer_id, :booking_confirmation
  json.url booking_url(booking, format: :json)
end

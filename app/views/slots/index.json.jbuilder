json.array!(@slots) do |slot|
  json.extract! slot, :id, :slot_id, :slot_date, :slot_start_time, :slot_end_time, :slot_availability, :ground_id, :sport_id
  json.url slot_url(slot, format: :json)
end

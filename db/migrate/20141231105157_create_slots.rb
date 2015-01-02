class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.integer :slot_id
      t.date :slot_date
      t.time :slot_start_time
      t.time :slot_end_time
      t.boolean :slot_availability
      t.integer :ground_id
      t.integer :sport_id

      t.timestamps
    end
  end
end

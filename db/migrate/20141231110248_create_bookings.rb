class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :booking_id
      t.integer :slot_id
      t.integer :customer_id
      t.boolean :booking_confirmation

      t.timestamps
    end
  end
end

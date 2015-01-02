class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.integer :staff_id
      t.string :staff_name
      t.string :staff_email
      t.string :staff_phone
      t.integer :sc_id

      t.timestamps
    end
  end
end

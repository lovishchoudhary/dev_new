class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :customer_id
      t.string :customer_name
      t.string :customer_email
      t.string :customer_phone
      t.string :customer_location

      t.timestamps
    end
  end
end

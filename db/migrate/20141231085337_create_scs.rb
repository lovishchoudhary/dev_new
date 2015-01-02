class CreateScs < ActiveRecord::Migration
  def change
    create_table :scs do |t|
      t.integer :scs_id
      t.integer :city_id
      t.string :sc_name
      t.text :sc_location

      t.timestamps
    end
  end
end

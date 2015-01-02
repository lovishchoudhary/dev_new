class CreateGrounds < ActiveRecord::Migration
  def change
    create_table :grounds do |t|
      t.integer :ground_id
      t.string :ground_name
      t.text :ground_description
      t.integer :sc_id

      t.timestamps
    end
  end
end

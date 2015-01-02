class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.integer :sc_id
      t.boolean :refreshment
      t.boolean :parking
      t.boolean :sports_shop

      t.timestamps
    end
  end
end

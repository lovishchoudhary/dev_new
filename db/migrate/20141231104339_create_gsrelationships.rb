class CreateGsrelationships < ActiveRecord::Migration
  def change
    create_table :gsrelationships do |t|
      t.integer :ground_id
      t.integer :sport_id

      t.timestamps
    end
  end
end

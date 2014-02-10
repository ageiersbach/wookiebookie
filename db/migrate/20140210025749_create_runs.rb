class CreateRuns < ActiveRecord::Migration
  def change
    create_table :runs do |t|
      t.integer :wooky_id
      t.integer :race_id
      t.timestamps
    end

    add_index :runs, :race_id
    add_index :runs, :wooky_id
    add_index :runs, [:race_id, :wooky_id], :unique => true
  end
end

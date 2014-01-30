class CreateWookies < ActiveRecord::Migration
  def change
    create_table :wookies do |t|
      t.string :name
      t.float :best_time
      t.float :odds

      t.timestamps
    end
  end
end

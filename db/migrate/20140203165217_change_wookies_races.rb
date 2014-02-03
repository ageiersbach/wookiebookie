class ChangeWookiesRaces < ActiveRecord::Migration
  def up
    drop_table :wookies_races
    create_table :races_wookies do |t|
      t.belongs_to :wookie
      t.belongs_to :race
    end
  end

  def down
    drop_table :races_wookies
    create_table :wookies_races do |t|
      t.belongs_to :wookie
      t.belongs_to :race
    end
  end
end

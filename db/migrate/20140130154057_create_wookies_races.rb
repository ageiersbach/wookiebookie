class CreateWookiesRaces < ActiveRecord::Migration
  def change
    create_table :wookies_races do |t|
      t.belongs_to :wookie
      t.belongs_to :race
    end
  end
end

class DropRacesWookies < ActiveRecord::Migration
  def change 
    drop_table :races_wookies
  end

end

class ChangeRacesWookies < ActiveRecord::Migration
  def change
    rename_column :races_wookies, :wookie_id, :wooky_id
  end
end

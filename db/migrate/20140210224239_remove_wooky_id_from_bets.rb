class RemoveWookyIdFromBets < ActiveRecord::Migration
  def change  
    remove_column :bets, :wooky_id   
  end
end

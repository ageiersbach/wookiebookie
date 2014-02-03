class RenameColumnInBets < ActiveRecord::Migration
  def change 
    rename_column :bets, :wookie_id, :wooky_id
  end

end

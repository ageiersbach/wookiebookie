class AddWagerCentsToBets < ActiveRecord::Migration
  def change
    add_column :bets, :wager_cents, :integer
  end
end

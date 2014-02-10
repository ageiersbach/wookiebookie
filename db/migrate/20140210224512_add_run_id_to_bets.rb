class AddRunIdToBets < ActiveRecord::Migration
  def change
    add_column :bets, :run_id, :integer
    add_index :bets, :run_id
  end
end

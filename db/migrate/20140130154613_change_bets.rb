class ChangeBets < ActiveRecord::Migration
  def change
    change_table :bets do |t|
      t.belongs_to :wookie
    end
  end
end

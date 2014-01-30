class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.decimal :amount
      t.string :owner

      t.timestamps
    end
  end
end

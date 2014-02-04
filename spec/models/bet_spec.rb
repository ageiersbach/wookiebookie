require 'spec_helper'

describe Bet do
  
  let!(:bet) { create(:bet) }
  
  describe "validates the wager" do
  
    it "will not validate without a wager" do
      bad_bet = Bet.new(wager_cents: nil)
      expect(bad_bet).to_not be_valid
    end
    
    it "a negative amount will not validate" do
      negative_bet = Bet.new(wager_cents:-200)
      expect(negative_bet).to_not be_valid 
    end

  end

end

require 'spec_helper'

describe Bet do
  
  let!(:bet) { create(:bet) }
  
  describe "validates the amount" do
  
    it "a nil amount will not validate" do
      bad_bet = Bet.new(amount: nil)
      expect(bad_bet).to_not be_valid
    end
    
    it "a negative amount will not validate" do
      negative_bet = Bet.new(amount: -1.90)
      expect(negative_bet).to_not be_valid 
    end

  end

end

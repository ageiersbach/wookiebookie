require 'spec_helper'

feature "Bet integration" do

  describe "Placing bets" do
    let!(:bet) { create(:bet, :owner => "Bob") }
       
    it "can see list of existing bets" do
      visit bets_url
      expect(page).to have_text("Bob")
    end

    it "can place a new bet" do
      visit bets_url
      click_link "New Bet"
      fill_in "Owner", with: "Miss W. Texas"
      fill_in "Wager", with: 200 

      click_button "Save"
      
      expect(page).to have_text("Thank you, Miss W. Texas. Your bet is on the books!")  
    end

  end
end

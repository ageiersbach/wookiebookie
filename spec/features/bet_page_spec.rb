require 'spec_helper'

feature "Bet integration" do

  describe "Placing bets" do
    let!(:uno) { create(:wookie, :name => "Wookie Numero Uno") }
    let!(:bet) { create(:bet, :owner => "Bob", :wooky_id => uno.id) }
       
    it "can see list of existing bets" do
      visit bets_url
      expect(page).to have_text("Bob")
      expect(page).to have_text("Wookie Numero Uno")
    end

    it "can place a new bet" do
      visit bets_url
      click_link "New Bet"
      fill_in "Owner", with: "Miss W. Texas"
      page.select 'Wookie Numero Uno', :from => 'Wookies'
      fill_in "Wager", with: 200 

      click_button "Save"
      
      expect(page).to have_text("Thank you, Miss W. Texas. Your bet is on the books!")  
    end

  end
end

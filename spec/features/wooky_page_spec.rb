require 'spec_helper'

feature "Makin' Wookies..." do
  let!(:wookie) { create(:wookie, :name => "Chewwie") }

  describe "adding a new wooky", :type => :feature do

    it "confirms addition of wooky to the ranks of racers" do 
      visit wookies_url
      click_link "New Wookie"
      fill_in "Name", with: "Mr. Chew Bacca"
      click_button "Save"

      expect(page).to have_text("Mr. Chew Bacca was successfully added to the ranks.")
    end

  end

  describe "changing a wooky's settings", :type => :feature do
  
    it "confirms wooky was updated" do
      visit wooky_url(wookie)
      click_link "Edit"
      fill_in "Name", with: "Mr. Chew Bacca"
      click_button "Save"

      expect(page).to have_text("Mr. Chew Bacca has been successfully updated.")
    end
  end

  describe "retiring a wooky" do
    
    it "confirms wooky was retired" do
      visit wooky_url(wookie)
      click_button "Retire"
      expect(page).to have_text("It is never easy to lose a colleague; we wish Chewwie the best retirement a wookie could want!")
    end
  end
end

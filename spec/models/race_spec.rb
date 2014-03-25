require 'spec_helper'

describe Race do 
  let!(:race) { build(:race) }

  it "has a location" do
    expect(race).to validate_presence_of(:location)
  end

  it "generates a random distance integer" do
    saved_race = create(:race) 
    expect(saved_race.distance).to_not be_nil
  end

  it "has must have two or more wookies to get a winner"
end

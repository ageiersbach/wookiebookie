require 'spec_helper'

describe Race do 
  let!(:race) { build(:race) }

  it "has a location" do
    expect(race).to be_valid 
  end

  it "has must have two or more wookies to get a winner"
end

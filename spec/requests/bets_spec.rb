require 'spec_helper'

describe "Bets" do
  describe "GET /bets" do
    it "gets a status 200" do
      get bets_path
      expect(response.status).to be(200)
    end
  end
end

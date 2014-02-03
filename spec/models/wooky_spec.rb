require 'spec_helper'

describe Wooky do
  let(:wookie_frank) { create(:wookie, {:name => "Frank"}) }
  it "has a name" do
    expect(wookie_frank.name).to eq("Frank")
  end
end

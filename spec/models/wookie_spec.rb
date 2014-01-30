require 'spec_helper'

describe Wookie do
  subject { create(:wookie) }
  its(:name) { should == 'Chewwie'}
  its(:best_time) { should == 15.457}
  its(:odds) { should == 0.1112 }
end

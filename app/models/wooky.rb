class Wooky < ActiveRecord::Base
  attr_accessible :best_time, :name, :odds 
  has_many :runs
  has_many :races, :through => :runs
end

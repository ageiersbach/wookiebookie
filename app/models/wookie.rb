class Wookie < ActiveRecord::Base
  attr_accessible :best_time, :name, :odds
  has_and_belongs_to_many :races
  has_many :bets
end

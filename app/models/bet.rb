class Bet < ActiveRecord::Base
  attr_accessible :amount, :owner
  belongs_to :wookie
end

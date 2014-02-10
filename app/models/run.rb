class Run < ActiveRecord::Base
  belongs_to :wooky
  belongs_to :race
  has_many :bets
end

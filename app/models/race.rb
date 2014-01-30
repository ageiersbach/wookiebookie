class Race < ActiveRecord::Base
  attr_accessible :location, :winner_id
  has_and_belongs_to_many :wookies
end

class Race < ActiveRecord::Base
  attr_accessible :location, :winner_id
  has_many :runs
  has_many :wookies, :through => :runs
  validates_presence_of :location

end

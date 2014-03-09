class Race < ActiveRecord::Base
  attr_accessible :location, :winner_id
  has_many :runs
  has_many :wookies, :through => :runs
  validates_presence_of :location
  before_save :add_distance

  private

  def add_distance
    self.distance = Random.rand(1..20)
  end
end

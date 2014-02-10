class Bet < ActiveRecord::Base
  attr_accessible :owner, :wager_cents, :run_id
  belongs_to :run
  monetize :wager_cents
  validates_presence_of :wager_cents
  validate :cannot_be_negative

  private
  def cannot_be_negative 
    if (wager_cents && wager_cents < 100)
      errors.add(:wager_cents, "Wager cannot be less than $1")
    end
  end
end

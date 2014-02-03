class Bet < ActiveRecord::Base
  attr_accessible :amount, :owner
  belongs_to :wookie
  validate :amount, :presence => true 
  validate :cannot_be_negative

  private
  def cannot_be_negative 
    amount = self.amount.to_f()
    if (amount <= 0.0)
      errors.add(:amount, "Amount cannot be less than $1")
    end
  end
end

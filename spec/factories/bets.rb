FactoryGirl.define do
  factory :bet do
    wager_cents '100'
    owner 'Darth Vader'
    association :wooky, factory: :wookie
  end
end

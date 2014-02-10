FactoryGirl.define do
  factory :run do
    association :wooky, factory: :wookie
    association :race
  end
end

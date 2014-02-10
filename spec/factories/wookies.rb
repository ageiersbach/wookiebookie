FactoryGirl.define do
  factory :wookie, class:Wooky do 
    name Faker::Name.name 
  end
end

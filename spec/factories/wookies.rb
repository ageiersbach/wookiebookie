FactoryGirl.define do
  factory :wookie, class:Wooky do |f|
    f.name Faker::Name.name 
  end
end

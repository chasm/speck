# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :artist do
    name { Faker::Name.name }
    age { rand(86) + 13 }
    instrument_played { %w[guitar drums bass].shuffle.first }
  end
  
  factory :invalid_artist, parent: :artist do
    name nil
  end
end

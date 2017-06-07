FactoryGirl.define do
  factory :item do
    name { Faker::StarWars.character }
    location { Faker::StarWars.character }
    postal_code { Faker::Number.number(6) }
    list_id nil
  end
end

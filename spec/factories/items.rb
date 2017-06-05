FactoryGirl.define do
  factory :item do
    name { Faker::StarWars.character }
    done false
    list_id nil
  end
end

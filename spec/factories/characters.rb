FactoryBot.define do
  factory :character do
    name          { Faker::Name.name }
    residence     { Faker::Lorem.sentences }
    gender_id     { 1 }
    introductions { Faker::Lorem.sentences}
    association :user
    
    
  end
end

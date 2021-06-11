FactoryBot.define do
  factory :character do
    name          { Faker::Name.name }
    residence     { Faker::String.random(length:1..40) }
    gender_id     { 1 }
    introductions { Faker::Lorem.sentences}
    association :user
    
    after(:build) do |character|
      character.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end

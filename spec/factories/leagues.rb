FactoryBot.define do
  factory :league do
    name { Faker::Company.name }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
    price { Faker::Number.decimal(l_digits: 4, r_digits: 2) }
  end
end

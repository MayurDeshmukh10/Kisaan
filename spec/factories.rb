require 'faker'
Faker::Config.random = Random.new(42)



FactoryBot.define do
    factory :farmer do
        first_name { Faker::Name.first_name }
        last_name { Faker::Name.last_name }
        mobile_number {Faker::Number.number(digits: 10)}
        email {Faker::Internet.email}
    end

    factory :farmer_instrument do
        farmer_id { Faker::Name.first_name }
        instrument_id { Faker::Name.last_name }
        rent_per_hour {Faker::Number.number(digits: 4)}
        is_available {Faker::Boolean.boolean}
        deposit {Faker::Number.number(digits: 4)} 
        available_from {Faker::Date.in_date_period}
        available_to {Faker::Date.in_date_period}
    end

    factory :instrument do
        name { Faker::Name.first_name }
        brand { Faker::Name.last_name }
        specifications { Faker::Name.first_name}
    end


end
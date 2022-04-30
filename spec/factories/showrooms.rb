# frozen_string_literal: true

FactoryBot.define do
  factory :showroom do
    name { Faker::Name.name }
    adress { Faker::Address.full_address }
    phone { Faker::PhoneNumber.phone_number }
    mobile { Faker::PhoneNumber.cell_phone }
    email { Faker::Internet.email }
    image_url { Faker::Avatar.image }
    geolocation { 'MyString' }
  end
end

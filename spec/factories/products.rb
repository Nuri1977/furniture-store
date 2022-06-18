# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    association :subcategory
    product_name { Faker::House.unique.room }
    price { Faker::Number.number(digits: 3)}
    dimensions { 'MyText' }
  end
end

# frozen_string_literal: true

FactoryBot.define do
  factory :product do
    association :subcategory
    product_name { 'MyString' }
    price { 1 }
    dimensions { 'MyText' }
  end
end

# frozen_string_literal: true

FactoryBot.define do
  factory :subcategory do
    association :category
    name { 'MyString' }
  end
end

# frozen_string_literal: true

FactoryBot.define do
  factory :subcategory do
    category { nil }
    name { 'MyString' }
  end
end

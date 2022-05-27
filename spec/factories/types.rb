# frozen_string_literal: true

FactoryBot.define do
  factory :type do
    category { nil }
    type_name { 'MyString' }
  end
end

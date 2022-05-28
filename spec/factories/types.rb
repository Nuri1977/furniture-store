# frozen_string_literal: true

FactoryBot.define do
  factory :type do
    association :category
    type_name { 'MyType' }
  end
end

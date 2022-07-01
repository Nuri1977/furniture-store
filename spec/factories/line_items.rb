# frozen_string_literal: true

FactoryBot.define do
  factory :line_item do
    product { nil }
    cart { nil }
    quantity { 1 }
  end
end

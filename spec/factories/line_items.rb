# frozen_string_literal: true

FactoryBot.define do
  factory :line_item do
    association :product
    cart { Cart.create! }
    quantity { 1 }
  end
end

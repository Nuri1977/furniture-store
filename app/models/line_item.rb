# frozen_string_literal: true

class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  validates :quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1 }

  def total_price
    product.price.to_i * quantity.to_i
  end
end

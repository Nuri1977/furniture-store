# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_product(product, quantity)
    current_item = line_items.find_by(product_id: product.id)
    if current_item
      current_item.quantity += quantity.to_i
    else
      current_item = line_items.build(product_id: product.id, quantity: quantity.to_i)
    end
    current_item
  end

  def total_amount
    line_items.to_a.sum(&:total_price)
  end
end

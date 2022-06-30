# frozen_string_literal: true

module ApplicationHelper

  def cart_count_over_one
    @cart.line_items.map(&:quantity).sum
  end

  def cart_has_items
    @cart.line_items.count > 0 if @cart
  end
end

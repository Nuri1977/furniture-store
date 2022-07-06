# frozen_string_literal: true

module ApplicationHelper
  # rubocop:disable Rails/HelperInstanceVariable
  def cart_count_over_one
    @cart.line_items.sum(&:quantity)
  end

  def cart_has_items
    @cart.line_items.count.positive? if @cart
  end
  # rubocop:enable Rails/HelperInstanceVariable
end

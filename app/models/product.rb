# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :type

  validates :product_name, presence: true, length: { maximum: 250 }
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :dimensions, presence: true
end

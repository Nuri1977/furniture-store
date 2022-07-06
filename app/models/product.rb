# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :subcategory
  has_many :line_items, dependent: :destroy

  validates :product_name, presence: true, length: { maximum: 250 }
  validates :price, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :dimensions, presence: true

  has_one_attached :image

  scope :outlet, -> { where(outlet: true) }
end

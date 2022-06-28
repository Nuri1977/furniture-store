# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :subcategories, dependent: :destroy
  has_many :products, through: :subcategories
  has_one_attached :image

  validates :category_name, presence: true, length: { maximum: 250 }
end

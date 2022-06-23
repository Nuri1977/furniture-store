# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :subcategories, dependent: :destroy
<<<<<<< HEAD
  has_many :products, through: :subcategories
=======
  has_one_attached :image
>>>>>>> e7fcfdbfedecd8ef6448a164ed93e565b77c6645

  validates :category_name, presence: true, length: { maximum: 250 }
end

# frozen_string_literal: true

class Subcategory < ApplicationRecord
  belongs_to :category
  has_many :products, dependent: :destroy
  has_one_attached :image

  validates :name, presence: true, length: { maximum: 250 }
end

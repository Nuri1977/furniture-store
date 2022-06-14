# frozen_string_literal: true

class Subcategory < ApplicationRecord
  belongs_to :category
  has_many :products, dependent: :destroy
end

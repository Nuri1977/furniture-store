# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :subcategory

  scope :outlet, -> { where(outlet: true) }
end

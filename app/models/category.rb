# frozen_string_literal: true

class Category < ApplicationRecord
  validates :category_name, presence: true, length: { maximum: 250 }
end

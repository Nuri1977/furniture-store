# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :types, dependent: :destroy

  validates :category_name, presence: true, length: { maximum: 250 }
end

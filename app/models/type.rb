# frozen_string_literal: true

class Type < ApplicationRecord
  belongs_to :category

  validates :type_name, presence: true, length: { maximum: 250 }
end

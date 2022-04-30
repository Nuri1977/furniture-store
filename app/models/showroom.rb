# frozen_string_literal: true

class Showroom < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :adress, presence: true
  validates :phone, presence: true
  validates :mobile, presence: true
  validates :image_url, presence: true
end

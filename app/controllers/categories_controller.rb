# frozen_string_literal: true

class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show]

  # GET /categories/1
  def show; end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_category
    @category = Category.find(params[:id])
  end
end

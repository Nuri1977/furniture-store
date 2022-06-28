# frozen_string_literal: true

class SubcategoriesController < ApplicationController
  before_action :set_subcategory, only: %i[show]

  # GET /subcategorys/1
  def show
    @products = @subcategory.products
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_subcategory
    @subcategory = Subcategory.find(params[:id])
  end
end

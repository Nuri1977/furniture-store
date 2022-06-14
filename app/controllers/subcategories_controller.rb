# frozen_string_literal: true

class SubcategoriesController < ApplicationController
  before_action :set_subcategory, only: %i[show edit update destroy]

  # GET /subcategorys
  def index
    @subcategories = Subcategory.all
  end

  # GET /subcategorys/1
  def show
    @products = @subcategory.products
  end

  # GET /subcategorys/new
  def new
    @subcategory = Subcategory.new
    @categories = Category.all
  end

  # GET /subcategorys/1/edit
  def edit
    @categories = Category.all
  end

  # POST /subcategorys
  def create
    @subcategory = Subcategory.new(subcategory_params)

    if @subcategory.save
      redirect_to @subcategory
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subcategorys/1
  def update
    if @subcategory.update(subcategory_params)
      redirect_to @subcategory
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /subcategorys/1
  def destroy
    @subcategory.destroy
    redirect_to subcategories_url
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_subcategory
    @subcategory = Subcategory.find(params[:id])
  end

  def subcategory_params
    params.require(:subcategory).permit(:category_id, :name)
  end
end

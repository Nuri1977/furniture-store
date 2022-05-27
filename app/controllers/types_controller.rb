# frozen_string_literal: true

class TypesController < ApplicationController
  before_action :set_type, only: %i[show edit update destroy]

  # GET /types
  def index
    @types = Type.all
  end

  # GET /types/1
  def show; end

  # GET /types/new
  def new
    @type = Type.new
  end

  # GET /types/1/edit
  def edit; end

  # POST /types
  def create
    @type = Type.new(type_params)

    if @type.save
      redirect_to @type
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /types/1
  def update
    if @type.update(type_params)
      redirect_to @type
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /types/1
  def destroy
    @type.destroy
    redirect_to types_url
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_type
    @type = Type.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def type_params
    params.require(:type).permit(:category_id, :type_name)
  end
end

# frozen_string_literal: true

class CartsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :invalid_cart
  # rubocop:disable Rails/I18nLocaleTexts

  # GET /carts/1
  # GET /carts/1.json
  def show; end

  # GET /carts/new
  def new; end

  # POST /carts
  # POST /carts.json
  def create
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    @cart.destroy if @cart.id == session[:cart_id]
    session[:cart_id] = nil
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Cart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # rubocop:enable Rails/I18nLocaleTexts

  private

  # rubocop:disable Rails/I18nLocaleTexts
  def invalid_cart
    logger.error "Attempt to access invalid cart #{params[:id]}"
    redirect_to root_path, notice: "That cart doesn't exist"
  end
  # rubocop:enable Rails/I18nLocaleTexts
end

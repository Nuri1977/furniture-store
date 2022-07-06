# frozen_string_literal: true

class LineItemsController < ApplicationController
  # rubocop:disable Rails/I18nLocaleTexts

  before_action :set_line_item, only: %i[update destroy]

  # GET /line_items/new
  def new
    @line_item = LineItem.new
  end

  def update
    @line_item.quantity = line_item_params[:quantity]

    if @line_item.save
      redirect_to @line_item.cart, notice: 'Item quantity updated successfully'
    else
      redirect_to @line_item.cart, notice: 'Error updating quantity'
    end
  end

  # POST /line_items
  # POST /line_items.json
  def create
    product = Product.find(line_item_params[:product_id])
    @line_item = @cart.add_product(product, line_item_params[:quantity])

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to @line_item.cart, notice: 'Item added to cart.' }
      else
        format.html { render :new }
      end
    end
  end

  # DELETE /line_items/1
  # DELETE /line_items/1.json
  def destroy
    cart_id = @line_item.cart_id
    @line_item.destroy
    respond_to do |format|
      format.html { redirect_to carts_path(id: cart_id), notice: 'Item successfully removed.' }
      format.json { head :no_content }
    end
  end

  # rubocop:enable Rails/I18nLocaleTexts

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_line_item
    @line_item = LineItem.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.

  def line_item_params
    params.require(:line_item).permit(:product_id, :cart_id, :quantity)
  end
end

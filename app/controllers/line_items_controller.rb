class LineItemsController < InheritedResources::Base

  private

    def line_item_params
      params.require(:line_item).permit(:product_id, :cart_id, :quantity)
    end

end

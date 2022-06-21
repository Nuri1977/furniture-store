# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Products', type: :request do
  describe 'GET /show' do
    category = Category.create(category_name: 'Test category')
    subcategory = Subcategory.create(name: 'Test subcategory', category_id: category.id)
    product = Product.create(product_name: 'Test product', price: 100, show_price: true, new_product: true, on_promotion: true, is_outlet: true,
                             dimensions: 'Test dimensions', subcategory_id: subcategory.id)
    it 'returns http success' do
      get product_url(product)
      expect(response).to have_http_status(:success)
    end
  end
end

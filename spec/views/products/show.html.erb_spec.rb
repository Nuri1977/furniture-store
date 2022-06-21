# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'products/show', type: :view do
  it 'renders the product show page' do
    category = Category.create(category_name: 'Test category')
    subcategory = Subcategory.create(name: 'Test subcategory', category_id: category.id)
    product = assign(:product, Product.create(product_name: 'Test product', price: 100, show_price: true, new_product: true, on_promotion: true, is_outlet: true,
                                              dimensions: 'Test dimensions', subcategory_id: subcategory.id))

    render

    expect(rendered).to include('Test product')
    expect(rendered).to include(product.price.to_s)
  end
end

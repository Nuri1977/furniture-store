# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'line_items/show', type: :view do
  before do
    @line_item = assign(:line_item, LineItem.create!(
                                      product: nil,
                                      cart: nil,
                                      quantity: 2
                                    ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end

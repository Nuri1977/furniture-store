# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'line_items/index', type: :view do
  before do
    assign(:line_items, [
             LineItem.create!(
               product: nil,
               cart: nil,
               quantity: 2
             ),
             LineItem.create!(
               product: nil,
               cart: nil,
               quantity: 2
             )
           ])
  end

  it 'renders a list of line_items' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: 2.to_s, count: 2
  end
end

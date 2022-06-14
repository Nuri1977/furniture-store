# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'subcategories/index', type: :view do
  before do
    assign(:subcategories, [
             Subcategory.create!(
               category: nil,
               name: 'Name'
             ),
             Subcategory.create!(
               category: nil,
               name: 'Name'
             )
           ])
  end

  it 'renders a list of subcategories' do
    render
    assert_select 'tr>td', text: nil.to_s, count: 2
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
  end
end

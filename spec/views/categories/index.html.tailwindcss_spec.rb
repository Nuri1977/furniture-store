# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'categories/index', type: :view do
  before do
    assign(:categories, [
             Category.create!(
               category_name: 'Category Name'
             ),
             Category.create!(
               category_name: 'Category Name'
             )
           ])
  end

  it 'renders a list of categories' do
    render
    expect(rendered).to include('Category Name')
  end
end

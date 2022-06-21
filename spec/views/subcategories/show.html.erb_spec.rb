# frozen_string_literal: true

require 'rails_helper'

# rubocop:disable Rails/FilePath

RSpec.describe 'subcategories/show', type: :view do
  it 'renders the subcategory show page' do
    category = Category.create(category_name: 'Category Name')
    subcategory = Subcategory.create(name: 'Test subcategory', category_id: category.id)
    subcategory.image.attach(io: File.open("#{Rails.root}/app/assets/images/bedroom_02.jpg"), filename: 'bedroom_01.jpg')
    assign(:subcategory, subcategory)

    render

    expect(rendered).to include('TEST SUBCATEGORY')
    expect(rendered).to include(subcategory.name.upcase)
  end
end

# rubocop:enable Rails/FilePath

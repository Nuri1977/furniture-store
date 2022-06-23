# frozen_string_literal: true

# rubocop:disable Rails/FilePath

require 'rails_helper'

RSpec.describe 'categories/show', type: :view do
  it 'renders nothinhg if no image' do
    assign(:category, create(:category))
    render
    expect(rendered).to match("\n\n")
  end

  it 'renders attributes in show view' do
    category = Category.create(category_name: 'Category Name')
    category.image.attach(io: File.open("#{Rails.root}/app/assets/images/bedroom_01.jpg"), filename: 'bedroom_01.jpg')
    assign(:category, category)

    render
    expect(rendered).to include(category.category_name.upcase)
  end
end

# rubocop:enable Rails/FilePath

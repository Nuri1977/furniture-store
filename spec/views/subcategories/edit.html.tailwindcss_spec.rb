# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'subcategories/edit', type: :view do
  it 'renders the edit subcategory form' do
    subcategory = assign(:subcategory, Subcategory.create!(category_id: 1, name: 'MyString'))

    render

    assert_select 'form[action=?][method=?]', subcategory_path(subcategory), 'post' do
      assert_select 'input[name=?]', 'subcategory[category_id]'

      assert_select 'input[name=?]', 'subcategory[name]'
    end
  end
end

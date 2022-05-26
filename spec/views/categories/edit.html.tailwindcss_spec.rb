# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'categories/edit', type: :view do
  it 'renders the edit category form' do
    category = assign(:category, Category.create!(
                                   category_name: 'MyString'
                                 ))
    render

    assert_select 'form[action=?][method=?]', category_path(category), 'post' do
      assert_select 'input[name=?]', 'category[category_name]'
    end
  end
end

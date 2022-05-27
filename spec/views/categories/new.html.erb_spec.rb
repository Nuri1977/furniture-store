# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'categories/new', type: :view do
  before do
    assign(:category, Category.new(
                        category_name: 'MyString'
                      ))
  end

  it 'renders new category form' do
    render

    assert_select 'form[action=?][method=?]', categories_path, 'post' do
      assert_select 'input[name=?]', 'category[category_name]'
    end
  end
end

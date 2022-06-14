# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'subcategories/new', type: :view do
  before do
    assign(:subcategory, Subcategory.new(
                           category: nil,
                           name: 'MyString'
                         ))
  end

  it 'renders new subcategory form' do
    render

    assert_select 'form[action=?][method=?]', subcategories_path, 'post' do
      assert_select 'input[name=?]', 'subcategory[category_id]'

      assert_select 'input[name=?]', 'subcategory[name]'
    end
  end
end

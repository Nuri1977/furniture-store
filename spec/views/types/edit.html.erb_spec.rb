# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'types/edit', type: :view do
  it 'renders the edit type form' do
    type = assign(:type, Type.create!(
                           category: Category.create(category_name: 'test1'),
                           type_name: 'MyString'
                         ))
    render

    assert_select 'form[action=?][method=?]', type_path(type), 'post' do
      assert_select 'input[name=?]', 'type[type_name]'
    end
  end
end

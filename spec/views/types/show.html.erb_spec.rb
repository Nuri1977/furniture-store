# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'types/show', type: :view do
  it 'renders attributes in <p>' do
    assign(:type, Type.create!(
                    category: Category.create(category_name: 'test'),
                    type_name: 'Type Name'
                  ))
    render
    expect(rendered).to match(/Type Name/)
  end
end

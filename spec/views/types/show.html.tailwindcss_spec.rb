# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'types/show', type: :view do
  it 'renders attributes in <p>' do
    type = assign(:type, Type.create!(
                           category: nil,
                           type_name: 'Type Name'
                         ))
    render
    expect(rendered).to match(type)
    expect(rendered).to match(/Type Name/)
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'subcategories/show', type: :view do
  before do
    @subcategory = assign(:subcategory, Subcategory.create!(
                                          category: nil,
                                          name: 'Name'
                                        ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end

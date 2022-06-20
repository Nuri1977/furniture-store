# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'categories/show', type: :view do
  it 'renders attributes in <p>' do
    assign(:category, create(:category))
    render
    expect(rendered).to match("\n\n")
  end
end

# frozen_string_literal: true

require 'spec_helper'

describe 'pages/home.html.erb' do
  it 'renders the home page' do
    render

    expect(rendered).to include('Promotions')
  end
end

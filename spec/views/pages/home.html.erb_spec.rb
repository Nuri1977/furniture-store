# frozen_string_literal: true

require 'spec_helper'

describe 'pages/home' do
  it 'renders the home pages' do
    render

    expect(rendered).to include('Promotions')
  end
end

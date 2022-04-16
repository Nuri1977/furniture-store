# frozen_string_literal: true

require 'rails_helper'

describe 'layouts/footer' do
  it 'displays footer icons' do
    render partial: 'layouts/footer'
    expect(rendered).to include('Information', 'Partners', 'Promotions', 'All rights reserved')
  end
end

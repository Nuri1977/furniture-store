# frozen_string_literal: true

require 'rails_helper'

describe 'dashboard/pages/home' do
  it 'renders dashboard-home' do
    render
    expect(rendered).to include('dashboard')
  end
end
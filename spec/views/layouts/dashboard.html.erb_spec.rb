# frozen_string_literal: true

require 'rails_helper'

describe 'layouts/dashboard' do
  let(:user) { create(:user) }

  before { sign_in user }

  it 'renders dashboard' do
    render

    expect(rendered).to include('Welcome back')
    expect(rendered).to have_link('Account')
  end
end

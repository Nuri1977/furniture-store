# frozen_string_literal: true

require 'rails_helper'

describe 'showrooms/index' do
  let(:showroom) { create(:showroom) }

  before do
    assign(:showrooms, [showroom])
  end

  context 'with dynamic content' do
    it 'display showrooms' do
      render

      expect(rendered).to include(showroom.name, showroom.adress, showroom.email)
    end
  end
end

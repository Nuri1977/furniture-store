# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Products', type: :request do
  describe 'GET /show' do
    let!(:product) { create :product }

    it 'returns http success' do
      get product_url(product)
      expect(response).to have_http_status(:success)
    end
  end
end

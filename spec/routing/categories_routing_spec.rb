# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CategoriesController, type: :routing do
  describe 'routing' do
    it 'routes to #show' do
      expect(get: '/categories/1').to route_to('categories#show', id: '1')
    end
  end
end

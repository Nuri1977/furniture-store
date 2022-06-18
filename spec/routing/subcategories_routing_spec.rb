# frozen_string_literal: true

require 'rails_helper'

RSpec.describe SubcategoriesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/subcategories').to route_to('subcategories#index')
    end

    it 'routes to #new' do
      expect(get: '/subcategories/new').to route_to('subcategories#new')
    end

    it 'routes to #show' do
      expect(get: '/subcategories/1').to route_to('subcategories#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/subcategories/1/edit').to route_to('subcategories#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/subcategories').to route_to('subcategories#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/subcategories/1').to route_to('subcategories#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/subcategories/1').to route_to('subcategories#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/subcategories/1').to route_to('subcategories#destroy', id: '1')
    end
  end
end

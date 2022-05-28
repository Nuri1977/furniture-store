# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TypesController, type: :routing do
  describe 'routing' do
    it 'routes to #index' do
      expect(get: '/types').to route_to('types#index')
    end

    it 'routes to #new' do
      expect(get: '/types/new').to route_to('types#new')
    end

    it 'routes to #show' do
      expect(get: '/types/1').to route_to('types#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/types/1/edit').to route_to('types#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/types').to route_to('types#create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/types/1').to route_to('types#update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/types/1').to route_to('types#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/types/1').to route_to('types#destroy', id: '1')
    end
  end
end

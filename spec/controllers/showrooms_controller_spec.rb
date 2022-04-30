# frozen_string_literal: true

require 'rails_helper'

describe ShowroomsController, type: :controller do
  my_params = {
    showroom: {
      name: 'Struga',
      adress: 'Zufer Music',
      phone: 51_561_515_516_615,
      mobile: 464_646_464,
      email: 'nurilacka@gmail.com',
      image_url: 'http://www.mebel-lacka.com/img/struga.jpg',
      geolocation: 'my geolocation'
    }
  }
  describe 'GET index' do
    it 'has a success status code' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST create_showrrom' do
    it 'handles new requests' do
      post :new
      expect(response).to have_http_status(:ok)
    end

    it 'handles create requests' do
      post :create, params: my_params
      expect(response).to redirect_to root_path
    end

    it 'validation stops create requests' do
      post :create, params: { showroom: { name: 'Failure' } }
      expect(response).to render_template(:new)
    end
  end
end

# frozen_string_literal: true

require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe '/types', type: :request do
  # Type. As you add validations to Type, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      Type.create! valid_attributes
      get types_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      type = Type.create! valid_attributes
      get type_url(type)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_type_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'render a successful response' do
      type = Type.create! valid_attributes
      get edit_type_url(type)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Type' do
        expect do
          post types_url, params: { type: valid_attributes }
        end.to change(Type, :count).by(1)
      end

      it 'redirects to the created type' do
        post types_url, params: { type: valid_attributes }
        expect(response).to redirect_to(type_url(Type.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Type' do
        expect do
          post types_url, params: { type: invalid_attributes }
        end.to change(Type, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post types_url, params: { type: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested type' do
        type = Type.create! valid_attributes
        patch type_url(type), params: { type: new_attributes }
        type.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the type' do
        type = Type.create! valid_attributes
        patch type_url(type), params: { type: new_attributes }
        type.reload
        expect(response).to redirect_to(type_url(type))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        type = Type.create! valid_attributes
        patch type_url(type), params: { type: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested type' do
      type = Type.create! valid_attributes
      expect do
        delete type_url(type)
      end.to change(Type, :count).by(-1)
    end

    it 'redirects to the types list' do
      type = Type.create! valid_attributes
      delete type_url(type)
      expect(response).to redirect_to(types_url)
    end
  end
end

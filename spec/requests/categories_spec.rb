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

RSpec.describe '/categories', type: :request do
  # Category. As you add validations to Category, be sure to
  # adjust the attributes here as well.

  before do
    user = User.create(email: 'text@example.com', password: '123456')
    post user_session_path, params: { user: { email: user.email, password: user.password } }
    get root_path
  end

  describe 'GET /index' do
    it 'renders a successful response' do
      get categories_url
      expect(response).to be_successful
    end
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      category = Category.create(category_name: 'Test category')
      get category_url(category)
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_category_url
      expect(response).to be_successful
    end
  end

  describe 'GET /edit' do
    it 'render a successful response' do
      category = Category.create(category_name: 'Test category')
      get edit_category_url(category)
      expect(response).to be_successful
    end
  end

  describe 'POST /create' do
    context 'with valid parameters' do
      it 'creates a new Category' do
        expect do
          post categories_url, params: { category: { category_name: 'test category' } }
        end.to change(Category, :count).by(1)
      end

      it 'redirects to the created category' do
        post categories_url, params: { category: { category_name: 'test category' } }
        expect(response).to redirect_to(category_url(Category.last))
      end
    end

    context 'with invalid parameters' do
      it 'does not create a new Category' do
        expect do
          post categories_url, params: { category: { category_name: '' } }
        end.to change(Category, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post categories_url, params: { category: { category_name: '' } }
        expect(response).to render_template('new')
      end
    end
  end

  describe 'PATCH /update' do
    context 'with valid parameters' do
      let(:new_attributes) do
        { category_name: 'updated_category' }
      end

      it 'updates the requested category' do
        category = Category.create(category_name: 'Test category')
        patch category_url(category), params: { category: new_attributes }
        category.reload
        expect(response).to have_http_status(:found)
      end

      it 'redirects to the category' do
        category = Category.create(category_name: 'Test category')
        patch category_url(category), params: { category: new_attributes }
        category.reload
        expect(response).to redirect_to(category_url(category))
      end
    end

    context 'with invalid parameters' do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        category = Category.create(category_name: 'Test category')
        patch category_url(category), params: { category: { category_name: '' } }
        expect(response).to render_template('edit')
      end
    end
  end

  describe 'DELETE /destroy' do
    it 'destroys the requested category' do
      category = Category.create(category_name: 'Test category')
      expect do
        delete category_url(category)
      end.to change(Category, :count).by(-1)
    end

    it 'redirects to the categories list' do
      category = Category.create(category_name: 'Test category')
      delete category_url(category)
      expect(response).to redirect_to(categories_url)
    end
  end
end

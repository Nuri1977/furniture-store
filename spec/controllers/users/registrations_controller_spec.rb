# frozen_string_literal: true

require 'rails_helper'

describe Users::RegistrationsController, type: :controller do
  before { request.env['devise.mapping'] = Devise.mappings[:user] }

  describe 'extra params for updating a user' do
    let!(:user) { create(:user) }

    before { sign_in user }

    it 'updates user params' do
      params = attributes_for(:user, email: 'nurilacka@gmail.com',
                                     current_password: 'password')
      put :update, params: { user: params }
      user.reload
      expect(user.email).to eq('nurilacka@gmail.com')
    end
  end

  describe 'soft delete for deleting a user' do
    let!(:user) { create(:user) }

    before { sign_in user }

    it 'delete the user from database' do
      expect do
        delete :destroy
      end.to change(User, :count).by(-1)
    end
  end
end

# frozen_string_literal: true

require 'rails_helper'

describe Dashboard::PagesController, type: :controller do
  let!(:user) { create(:user) }

  describe 'GET dashboard home' do
    context 'when user signed in' do
      before { sign_in user }

      it 'goes to dashboard' do
        get :home
        expect(response).to have_http_status(:success)
      end
    end

    context 'when user not signed in' do
      it 'redirects to sign in' do
        get :home
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end

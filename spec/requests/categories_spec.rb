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

  let(:category) { create(:category) }

  let(:invalid_attributes) do
    { category_name: '' }
  end
  let(:valid_attributes) do
    { category_name: 'test category' }
  end

  describe 'GET /show' do
    it 'renders a successful response' do
      get category_url(category)
      expect(response).to be_successful
    end
  end
end

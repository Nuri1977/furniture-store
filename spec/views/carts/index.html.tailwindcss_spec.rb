# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'carts/index', type: :view do
  before do
    assign(:carts, [
             Cart.create!,
             Cart.create!
           ])
  end

  it 'renders a list of carts' do
    render
  end
end

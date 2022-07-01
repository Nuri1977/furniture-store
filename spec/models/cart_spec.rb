# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cart, type: :model do
  cart = described_class.new

  describe 'validations' do
    it { expect(cart).to be_valid }
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  subject(:product) { create(:product) }

  describe 'validations' do
    it { expect(product).to be_valid }
    it { expect(product).to validate_presence_of(:product_name) }
    it { expect(product).to validate_presence_of(:price) }
    it { expect(product).to validate_presence_of(:dimensions) }
  end
end

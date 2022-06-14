# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Subcategory, type: :model do
  subject(:subcategory) { create(:subcategory) }

  describe 'validations' do
    it { expect(subcategory).to be_valid }
    it { expect(subcategory).to validate_presence_of(:name) }
  end
end

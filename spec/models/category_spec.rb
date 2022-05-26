# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Category, type: :model do
  subject(:category) { create(:category) }

  describe 'validations' do
    it { expect(category).to be_valid }
    it { expect(category).to validate_presence_of(:category_name) }
  end
end

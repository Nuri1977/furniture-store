# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LineItem, type: :model do
  subject(:line_item) { create(:line_item) }

  describe 'validations' do
    it { expect(line_item).to be_valid }
    it { expect(line_item).to validate_presence_of(:quantity) }
  end
end

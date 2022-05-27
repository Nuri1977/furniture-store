# frozen_string_literal: true

RSpec.describe Type, type: :model do
  subject(:type) { create(:type) }

  describe 'validations' do
    it { expect(type).to be_valid }
    it { expect(type).to validate_presence_of(:type_name) }
  end
end

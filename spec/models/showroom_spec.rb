# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Showroom, type: :model do
  subject(:showroom) { create(:showroom) }

  describe 'validations' do
    it { expect(showroom).to be_valid }
    it { expect(showroom).to validate_presence_of(:name) }
    it { expect(showroom).to validate_presence_of(:email) }
    it { expect(showroom).to validate_presence_of(:adress) }
  end
end

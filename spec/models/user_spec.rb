# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  subject(:user) { create(:user) }

  describe 'validations' do
    it { expect(user).to be_valid }

    %i[email password].each do |field_name|
      it { expect(user).to validate_presence_of(field_name) }
    end

  end
end

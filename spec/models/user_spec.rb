require 'rails_helper'

RSpec.describe User do
  describe 'Associations' do
    it { is_expected.to have_many(:directories) }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(255) }

    it { is_expected.to validate_presence_of(:phone_number) }
    it { is_expected.to validate_length_of(:phone_number).is_at_most(255) }
  end
end

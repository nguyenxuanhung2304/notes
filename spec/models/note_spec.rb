# == Schema Information
#
# Table name: notes
#
#  id           :bigint           not null, primary key
#  content      :text(65535)      not null
#  name         :string(255)      not null
#  title        :string(255)      not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  directory_id :bigint           not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_notes_on_directory_id  (directory_id)
#  index_notes_on_user_id       (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (directory_id => directories.id)
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

RSpec.describe Note do
  describe 'Associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:directory) }
    it { is_expected.to have_one(:alert).dependent(:destroy) }
  end

  describe 'Validations' do
    # name
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(255) }

    # title
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_length_of(:title).is_at_most(255) }

    # content
    it { is_expected.to validate_presence_of(:content) }
    it { is_expected.to validate_length_of(:content).is_at_most(65_535) }
  end
end

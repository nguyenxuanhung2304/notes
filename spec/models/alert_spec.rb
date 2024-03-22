# == Schema Information
#
# Table name: alerts
#
#  id              :bigint           not null, primary key
#  notification_at :datetime         not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  note_id         :bigint           not null
#
# Indexes
#
#  index_alerts_on_note_id  (note_id)
#
# Foreign Keys
#
#  fk_rails_...  (note_id => notes.id)
#
require 'rails_helper'

RSpec.describe Alert do
  describe 'Associations' do
    it { is_expected.to belong_to(:note) }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of(:notification_at) }
  end
end

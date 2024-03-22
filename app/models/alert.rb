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
class Alert < ApplicationRecord
  belongs_to :note

  validates :notification_at, presence: true, comparison: { greater_than: Time.zone.now }
end

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
class Note < ApplicationRecord
  belongs_to :user
  belongs_to :directory
  has_one :alert, dependent: :destroy

  validates :name, presence: true, length: { maximum: 255 }
  validates :title, presence: true, length: { maximum: 255 }
  validates :content, presence: true, length: { maximum: 65_535 }
end

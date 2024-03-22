# == Schema Information
#
# Table name: directories
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_directories_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Directory < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { maximum: 255 }
end

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  has_many :directories, dependent: :destroy

  validates :name, presence: true, length: { maximum: 255 }
  validates :phone_number, presence: true, length: { maximum: 255 }
end

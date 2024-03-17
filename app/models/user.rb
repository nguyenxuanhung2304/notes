class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  validates :name, presence: true, length: { maximum: 255 }
  validates :phone_number, presence: true, length: { maximum: 255 }
end

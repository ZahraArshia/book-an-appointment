class User < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :reserved_items, through: :reservations, source: :item

  validates :name, presence: true, length: { minimum: 1, maximum: 80 }
  validates :email, presence: true
  validates :password, presence: true, length: { minimum: 6 }
end

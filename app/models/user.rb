class User < ApplicationRecord
  has_many :items, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :reserved_items, through: :reservations, source: :item
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
end

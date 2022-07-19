class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :item

  validates :city, presence: true, length: { minimum: 2, maximum: 100 }
  validates :date, presence: true
end

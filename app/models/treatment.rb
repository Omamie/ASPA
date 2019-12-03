class Treatment < ApplicationRecord
  validates :name, :description, :price, :center_name, presence: true

  belongs_to :user
  has_many :bookings, dependent: :destroy
end

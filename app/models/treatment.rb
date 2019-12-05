class Treatment < ApplicationRecord
  validates :name, :description, :price, :center_name, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :bookings, dependent: :destroy
end

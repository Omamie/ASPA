class Treatment < ApplicationRecord
  validates :name, :description, :price, :center_name, presence: true
  mount_uploader :photo, PhotoUploader


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
end

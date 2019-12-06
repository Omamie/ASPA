class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :treatment
  after_action :overlaps?

  def overlaps?
    current_user.booking.date == @booking.date
  end
end

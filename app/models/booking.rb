class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :treatment
  validate :prevent_booking_overlap

  private

  def prevent_booking_overlap
    other_bookings = Booking.where(treatment: self.treatment)
    is_overlapping = other_bookings.any? do |other_booking|
      self.date == other_booking.date
    end
    errors.add(:date, ("booking overlaps")) if is_overlapping
  end
end

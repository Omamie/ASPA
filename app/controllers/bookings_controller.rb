class BookingsController < ApplicationController
  def create
    @treatment = Treatment.find(params[:id])
    authorize @treatment
    @booking = current_user.bookings.new(booking_params)
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:user_id, :treatment_id)
  end
end

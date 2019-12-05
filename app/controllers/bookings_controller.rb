class BookingsController < ApplicationController
  def new
    @booking = current_user.bookings.new
    authorize @booking
    @treatment = Treatment.find(params[:treatment_id])
    authorize @treatment
  end

  def create
    @booking = current_user.bookings.new(booking_params)
    @treatment = Treatment.find(params[:treatment_id])
    @booking.treatment = @treatment
    authorize @treatment
    authorize @booking
    if @booking.save
      redirect_to treatment_path(@treatment)
    else
      render "new"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:treatment_id, :date)
  end
end

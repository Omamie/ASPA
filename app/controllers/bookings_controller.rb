class BookingsController < ApplicationController
  def new
    @booking = current_user.bookings.new
    authorize @booking
    @treatment = Treatment.find(params[:treatment_id])
    authorize @treatment
  end

  def show
    @booking = Booking.find(params[:id])
    authorize @booking

  end

  def create
    @booking = current_user.bookings.new(booking_params)
    @treatment = Treatment.find(params[:treatment_id])
    @booking.treatment = @treatment
    authorize @treatment
    authorize @booking
    if @booking.save
      redirect_to treatment_booking_path(@treatment, @booking)
    else
      render "new"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:treatment_id, :date)
  end
end

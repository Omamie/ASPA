class BookingsController < ApplicationController
  def new
    @booking = current_user.booking.new
  end

  def create

  end
end

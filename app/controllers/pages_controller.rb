class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def user_profile
    @my_bookings = current_user.bookings
  end
end

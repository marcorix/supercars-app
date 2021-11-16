class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end
  def dashboard
    @booking = Booking.where(user: current_user)
  end
end

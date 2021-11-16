class BookingsController < ApplicationController
  def show

  end

  def create
    @booking = Booking.new(bookings_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user

    if @booking.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def bookings_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end

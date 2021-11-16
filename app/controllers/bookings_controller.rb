class BookingsController < ApplicationController

  def show
    @car = Car.find(params[:car_id])
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(bookings_params)
    @car = Car.find(params[:car_id])
    @booking.car = @car
    @booking.user = current_user

    if @booking.save
      redirect_to car_booking_path(@car, @booking)
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

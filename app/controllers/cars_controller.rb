class CarsController < ApplicationController
  before_action :set_car, only: [:show]
  def index
    @cars = Car.all
  end

  def show
    @booking = Booking.new()
  end

  def new
    @car = Car.new()
  end

  def create

  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:comment, :movie_id)
  end
end

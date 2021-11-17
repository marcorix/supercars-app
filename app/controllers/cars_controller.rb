class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
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
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
      redirect_to cars_path
    else
      render :new
    end
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:model, :color, :year, :price, :photo)
  end
end

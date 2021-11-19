class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  before_action :set_car, only: [:show]

  def index
    if params[:query].present?
      @cars = Car.search_by_model_and_year_and_color_and_address(params[:query])
    else
      @cars = Car.all
    end
  end

  def map
    @cars = Car.all

    # the `geocoded` scope filters only flats with coordinates (latitude & longitude)
    @markers = @cars.geocoded.map do |car|
      {
        lat: car.latitude,
        lng: car.longitude,
        info_window: render_to_string(partial: "info_window", locals: { car: car }),
        image_url: helpers.asset_url("car_icon.png")
      }
    end
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
    params.require(:car).permit(:model, :color, :year, :price, :photo, :address)
  end
end

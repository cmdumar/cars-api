class CarsController < ApplicationController
  before_action :set_car, only: %i[show destroy]

  # GET /cars
  def index
    @cars = Car.all
    render :index
  end

  # POST /cars
  def create
    # @car = Car.create!(car_params)
    @car = Car.new(car_params)
    if @car.save
      render json_response(@car, :created)
    else
      render json_response(@car.errors, :unprocessable_entity)
    end
  end

  # GET /cars/:id
  def show
    if @car
      render :show
    else
      render json_response({ error: 'Car not found!' }, 404)
    end
  end

  def destroy
    @car.destroy
    head :no_content
  end

  private

  def car_params
    # whitelist params
    params.permit(:model, :price, :top_speed, :range, :peak_power)
  end

  def set_car
    @car = Car.find(params[:id])
  end
end

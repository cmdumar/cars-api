class CarsController < ApplicationController
  # GET /cars
  def index
    cars = Car.all
    render :index, locals: { cars: cars }
  end

  # POST /cars
  def create
    # @car = Car.create!(car_params)
    car = Car.new(car_params)
    if car.save
      json_response(car, :created)
    else
      json_response(car.errors, :unprocessable_entity)
    end
  end

  # GET /cars/:id
  def show
    car = set_car
    return unless car

    if car
      render :show, locals: { car: car }
    else
      json_response({ error: 'Car not found!' }, 404)
    end
  end

  def destroy
    car = set_car
    return unless car

    if car.destroy
      json_response('Successfully deleted the car', 202)
    else
      json_response(car, 'Something went wrong')
    end
  end

  private

  def car_params
    # whitelist params
    params.permit(:model, :price, :top_speed, :range, :peak_power)
  end

  def set_car
    car = Car.find_by(id: params[:id])
    return car if car

    find_error('user')
    nil
  end
end

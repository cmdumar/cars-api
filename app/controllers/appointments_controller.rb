class AppointmentsController < ApplicationController
  def index
    @appointments = Appointment.where(user_id: @user.id)
    render :index
  end

  def create
    appointment = Appointment.create(appointment_params)
    json_response(appointment)
  end

  def destroy
    appointment = Appointment.find(params[:id])
    appointment.destroy
    head :no_content
  end

  private

  def appointment_params
    params.permit(:user_id, :car_id, :city, :date)
  end
end

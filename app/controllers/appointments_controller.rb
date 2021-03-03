class AppointmentsController < ApplicationController
  def index
    appointments = Appointment.all.where(user_id: params[:id])
    json_response(appointments)
  end

  def create
    appointment = Appointment.create(appointment_params)
    json_response(appointment)
  end

  def destroy
    appointment = Appointment.find_by(params[:id])
    appointment.destroy
    head :no_content
  end

  private

  def appointment_params
    params.permit(:city, :date)
  end
end

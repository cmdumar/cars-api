class AppointmentsController < ApplicationController
  def index
    appointments = Appointment.where(user_id: @user.id)
    render :index
  end

  def create
    appointment = Appointment.create(appointment_params)
    appointment.user_id = @user.id
    if appointment.save
      json_response(appointment, :created)
    else
      json_response(appointment.errors.full_messages, 500)
    end
  end

  def destroy
    appointment = Appointment.find(params[:id])
    appointment.destroy
    json_response('Successfully delete appointment')
  end

  private

  def appointment_params
    params.permit(:user_id, :car_id, :city, :date)
  end
end

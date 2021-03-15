class AppointmentsController < ApplicationController
  def index
    appointments = Appointment.where(user_id: @user.id)
    render :index, locals: { appointments: appointments }
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
    return unless appointment

    if appointment.destroy
      json_response('Successfully delete appointment', 202)
    else
      json_response(appointment, 'Something went wrong!')
    end
  end

  private

  def appointment_params
    params.permit(:user_id, :car_id, :city, :date)
  end
end

class SessionsController < ApplicationController
  before_action :authorized, except: [:create]
  # Login
  def create
    @user = User.find_by(email: params[:email])

    if @user&.authenticate(params[:password])
      helper = Helper.new
      token = helper.encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: { error: 'Invalid email or password' }
    end
  end
end

class UsersController < ApplicationController
  before_action :authorized, except: [:create]
  # Sign up
  def create
    @user = User.create(user_params)

    if @user.valid?
      token = Helper.encode_token({ user_id: @user.id })
      render json: { user: @user, token: token }
    else
      render json: { error: 'Invalid email or password' }
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end
end

class UsersController < ApplicationController
  before_action :authorized, except: [:create]
  # Sign up
  def create
    user = User.create(user_params)

    if user.valid?
      token = Helper.encode_token({ user_id: user.id })
      json_response({ user: user, token: token })
    else
      json_response({ error: 'Invalid email or password' }, 422)
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end
end

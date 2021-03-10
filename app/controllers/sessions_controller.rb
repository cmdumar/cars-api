class SessionsController < ApplicationController
  before_action :authorized, except: [:create]
  # Login
  def create
    @user = User.find_by(email: params[:email])

    if @user&.authenticate(params[:password])
      helper = Helper.new
      token = helper.encode_token({ user_id: @user.id })
      json_response({ user: @user, token: token })
    else
      json_response('Invalid username or password')
    end
  end
end

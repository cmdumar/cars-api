class UsersController < 
  before_action :authorized, only: [:auto_login]

  # Sign up
  def create
    @user = User.create(user_params)

    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: { user: @user, token: token }
    else
      render json: {error: "Invalid email or password"}
    end
  end

  # Login
  def login
    @user = User.find_by(email: params[:email])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid email or password"}
    end
  end


  def auto_login
    render json: @user
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end

end

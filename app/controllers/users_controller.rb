class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    current_user
    @gear = @current_user.gears
  end

  def create
    user = User.new(user_params)
    if user.valid?
      user.save
      session[:current_user_id] = user.id.to_s
      redirect_to root_path
    else
      @errors = user.errors
      @user = User.new
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :username, :password, :password_confirmation)
    end

end
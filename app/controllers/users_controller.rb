class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
    current_user
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:current_user_id] = user.id.to_s
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end

end
class SessionsController < ApplicationController

  def new
    if current_user
      redirect_to root_path
    else
      render 'new'
    end
  end

  def create
    user = User.where(email: params[:session][:email].downcase).first
    if user && user.authenticate(params[:session][:password])
      session[:current_user_id] = user.id.to_s
      redirect_to root_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
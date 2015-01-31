class GearsController < ApplicationController

  def new
    if current_user
      @gear = Gear.new
    else
      redirect_to login_path
    end
  end

  def create
    current_user
    gear = Gear.new(gear_params)
    if gear.valid?
      gear.save
      @current_user.gears << gear
      redirect_to user_path(@current_user.id)
    else
      @errors = gear.errors
      @gear = Gear.new
      render 'new'
    end
  end

  private

    def gear_params
      params.require(:gear).permit(:category, :brand, :model, :year, :spec, :name)
    end

end
class WelcomeController < ApplicationController

  def index
    current_user
    @gear = Gear.all
  end

end
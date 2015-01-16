class WelcomeController < ApplicationController

  def index
    @gear = Gear.all
  end

end
class WelcomeController < ApplicationController
  def index
    @services = Service.all
  end
end

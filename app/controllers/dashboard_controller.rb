class DashboardController < ApplicationController
  def home
    @dashboards = Dashboard.all
  end
end

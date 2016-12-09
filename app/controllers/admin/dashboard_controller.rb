class Admin::DashboardController < ApplicationController

  username = ENV['BASIC_ADMIN_ID']
  password = ENV['BASIC_ADMIN_PW']

  http_basic_authenticate_with name: username, password: password


  def show
  end
end

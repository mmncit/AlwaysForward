class WelcomeController < ApplicationController
  before_action :confirm_logged_in?
  def index
    @username = session[:username]
  end
end

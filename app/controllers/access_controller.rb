class AccessController < ApplicationController

  before_action :confirm_logged_in?, :except => [:login, :attempt_login, :logout]

  def login
    # login form
  end

  def attempt_login
    if params[:username].present? && params[:password].present?
      # Searches for username in database
      found_user = User.where(:username => params[:username]).first
      # Compares password with encrypted password
      if found_user
        authorized_user = found_user.authenticate(params[:password])
      end
    end

    if authorized_user
      # Set session variable to the user ID
      session[:user_id] = authorized_user.id
      session[:username] = authorized_user.username
      flash[:notice] = "You are now logged in as " + session[:username] 
      redirect_to(admin_path)
    else
      flash.now[:notice] = "Invalid username/password combination."
      render('login')
    end

  end

  def logout
    # Set user ID stored in session variable to NULL
    session[:user_id] = nil
    session[:username] = nil
    flash[:notice] = 'Logged out'
    redirect_to(access_login_path)
  end


end

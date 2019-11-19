class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception

    private

    def confirm_logged_in?
        unless session[:user_id] # if session ID is not present
            flash[:notice] = "Please log in." # login flash
            redirect_to(access_login_path) # redirect_to prevents requested action from running
    end
  end
end

class ApplicationController < ActionController::Base

    # Helper methods and their logic become directly available to corresponding views
    helper_method :current_user, :logged_in?, :is_administrator?

    # Retrieves details of currently logged in user from current sessio object.
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end

    # If this method returns a state of not nil, user is logged in
    def logged_in?
        !current_user.nil?
    end

    # If this method returns true, user is an admin
    def is_administrator?
        session[:is_admin]
    end

    private
    
    # Ensures that an action or controller is accessible only by logged-in users
    def require_login
        unless logged_in?
            flash[:error] = "You are not permitted to access this resource"
            redirect_to login_path
        end
    end

end

class SessionsController < ApplicationController

    # The new method renders the login form. It contains no logic itself, and simply renders the associated view (new.html.erb) that contains the login form HTML
    def new
    end

    def create
        user = User.find_by(email: params[:email]) # Find user in the database from user email
        if user && user.authenticate(params[:password]) && user.status == "Active" # Check that submitted password is valid using Bcrypt's authenticate method

            # Allocate following values to session object
            session[:user_id] = user.id
            session[:fname] = user.fname
            session[:is_admin] = user.is_admin

            # Redirect user to appropriate path i.e., admin or standard
            if session[:is_admin]
                redirect_to admin_path, notice: "Logged in successfully!"
            else
                redirect_to userhome_path, notice: "Logged in successfully!"
            end
        else
            flash.now[:error] = "Invalid email or password. Please try again."
            render 'new'
        end
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out successfully!"
    end
end

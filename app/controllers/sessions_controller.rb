class SessionsController < ApplicationController
  def new
    if current_user
      redirect_to user_path(current_user.id)
    end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.
      reset_session
      log_in user
      redirect_to user
    else
    # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new', status: :unprocessable_entity
    end
  end
    
  def destroy
    log_out if logged_in?
    redirect_to root_url, status: :see_other
  end

end

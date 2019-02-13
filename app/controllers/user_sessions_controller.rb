class UserSessionsController < ApplicationController
  def new; end;

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id

      # TODO - this will need to change once I decide what is reasonable.
      redirect_to "/"
    else
      flash[:error] = "Incorrect login credentials"
      render :new
    end
  end

  def destroy
    flash[:error] = nil
    session[:user_id] = nil
    render :new
  end
end

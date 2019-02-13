class LoginController < ApplicationController
  def login
    user = User.find_by(email: params[:user][:email])

    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
    end 

    redirect_to "/"
  end

  def logout
    session[:user_id] = nil
    redirect_to "/"
  end
end

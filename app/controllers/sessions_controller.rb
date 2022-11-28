class SessionsController < ApplicationController

  def new

  end

  def create
    user = User.find_by(usermail: params[:session][:usermail].downcase)
    if user
      # && user.authenticate(params[:session][:password_digest])
      session[:user_id] = user.id
      flash[:notice] = "Login succès sur Alpha blog"
      redirect_to user
    else
      flash.now[:alerte]="Mauvais utilisateur"
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Log out"
    redirect_to root_path
  end

end
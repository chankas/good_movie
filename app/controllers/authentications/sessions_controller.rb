class Authentications::SessionsController < ApplicationController

  skip_before_action :protect_pages, only: [:new, :create]
  def new
  end

  def create

    user = User.find_by(username: params[:login]) || User.find_by(email: params[:login])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to movies_path, notice: t('.created')
    else
      redirect_to new_session_path, alert: t('.invalid')
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path, notice: t('.destroyed')
  end
end
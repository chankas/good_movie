class Authentications::UsersController < ApplicationController
  
  def new
    @user = User.new()
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to movies_path , notice: t('.created')
    else
      render :new, status: :unprocessable_entity
    end
    
  end

  private

  def user_params
    params.require(:user).permit(:name, :username, :email, :password)
  end
end
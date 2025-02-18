class UsersController < ApplicationController
  skip_before_action :protect_pages
  def show
    @user = User.find_by!(username: params[:username])
  end
end
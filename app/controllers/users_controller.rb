class UsersController < ApplicationController
  skip_before_action :protect_pages
  def show
    @user = User.find_by!(username: params[:username])
    @categories = Category.order(name: :asc).load_async
    @pagy, @movies = pagy_countless( FindMovies.new.call({user_id: @user.id}).load_async,  items: 9)
  end
end
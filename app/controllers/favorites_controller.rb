class FavoritesController < ApplicationController
  def create
    movie = Movie.find(params[:movie_id])
    Favorite.create(movie: movie)
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace("favorite", partial: "movies/favorite", locals: { movie: movie, time: Time.now })
      end
    end
  end

  def destroy
    movie = Movie.find(params[:movie_id])
    movie.favorites.find_by(user: Current.user).destroy!
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace("favorite", partial: "movies/favorite", locals: { movie: movie, time: Time.now })
      end
    end
  end

  private

end
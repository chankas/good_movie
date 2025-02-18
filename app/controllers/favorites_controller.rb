class FavoritesController < ApplicationController
  def create
    movie.favorite!

    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace("favorite", partial: "movies/favorite", locals: { movie: movie, time: Time.now })
      end
    end
  end

  def destroy
    movie.unfavorite!
    respond_to do |format|
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace("favorite", partial: "movies/favorite", locals: { movie: movie, time: Time.now })
      end
    end
  end

  private
  def movie
    @movie ||= Movie.find(params[:movie_id])
  end

end
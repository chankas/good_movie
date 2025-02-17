class MoviesController < ApplicationController
  
  skip_before_action :protect_pages, only: [:index]

  def index
    @categories = Category.order(name: :asc).load_async
    @pagy, @movies = pagy_countless( FindMovies.new.call(product_params_index).load_async,  items: 9)
  end

  def new
    @movie = Movie.new()
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path, notice: t('.created')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit  
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to movies_path, notice: t('.updated')
    else
      render :edit, status: :unprocessable_entity
    end
  end
  private
  def movie_params
    params.require(:movie).permit(:title, :original_title, :overview, :release_date, :poster_path, :original_language, :vote_average, category_ids: [])
  end

  def product_params_index
    params.permit(:category_id, :min_year, :max_year, :query_text, :order_by)
  end
end
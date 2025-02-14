class MoviesController < ApplicationController
  
  def index
    @categories = Category.order(name: :asc).load_async
    @movies = Movie.all.includes(:categories)
    if product_params_index[:category_id].present?
      @movies = @movies.where("category_movies.category_id"  => product_params_index[:category_id])
    end
    @movies = @movies.order('movies.release_date asc').load_async
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
    params.require(:movie).permit(:title, :original_title, :overview, :release_date, :poster_path, :original_language, category_ids: [])
  end

  def product_params_index
    params.permit(:category_id)
  end
end
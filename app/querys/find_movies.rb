class FindMovies
  attr_reader :products
  def initialize(products = initial_scope)
    @products = products
  end

  def call(params={})
    scoped = products
    scoped = filter_by_category(scoped, params[:category_id])
    scoped = filter_by_min_year(scoped, params[:min_year])
    scoped = filter_by_max_year(scoped, params[:max_year])
    scoped = search_fulltext(scoped, params[:query_text])
    order_by(scoped, params[:order_by])
  end

  def filter_by_category(scoped, category_id)
    return scoped unless category_id.present?
    scoped.where("category_movies.category_id"  => category_id)
  end

  def filter_by_min_year(scoped, min_year)
    return scoped unless min_year.present?
    scoped.where("movies.release_date >= ?", Date.new(min_year.to_i, 1, 1))
  end

  def filter_by_max_year(scoped, max_year)
    return scoped unless max_year.present?
    scoped.where("movies.release_date <= ?", Date.new(max_year.to_i, 12, 31))
  end

  def search_fulltext(scoped, query_text) 
    return scoped unless query_text.present?
    scoped.search_fulltext(query_text)
  end

  def order_by(scoped, order_by)
    order_by_query = Movie::ORDER_BY.fetch(order_by&.to_sym, Movie::ORDER_BY[:newest])
    scoped.order(order_by_query)
  end


  def initial_scope
    Movie.all.includes(:categories)
  end

end
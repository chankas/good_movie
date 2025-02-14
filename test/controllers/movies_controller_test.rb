require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test 'render a list of movies' do
    get movies_path
    assert_response :success
    assert_select '.movie', 2
  end

  test 'render a list movies filtered by category' do
    category = categories(:anime)
    get movies_path(category_id: category.id)    
    assert_response :success
    assert_select '.movie', 1
  end

  test 'render a list movies filtered by min_year' do
    get movies_path(min_year: 1980)
    assert_response :success
    assert_select '.movie', 1
  end

  test 'render a list movies filtered by max_year' do
    get movies_path(max_year: 1980)
    assert_response :success
    assert_select '.movie', 1
  end

  test 'render a list movies filtered by min_year and max_year' do
    get movies_path(min_year: 1980, max_year: 1900)
    assert_response :success
    assert_select '.movie', 0
  end

  test 'render a list movies filtered by title' do
    get movies_path(query_text: 'fuga')
    assert_response :success
    assert_select '.movie', 1
  end
  test 'render a new movie form' do
    get new_movie_path

    assert_response :success
    assert_select 'form'
  end

  test 'allows to create a new movie' do
    post movies_path, params: {
      movie: {
        title: 'Tiburón',
        original_title: 'Jaws',
        overview: 'Un tiburón ataca a un grupo de bañistas',
        release_date: '1975-06-20',
        poster_path: 'https://image.tmdb.org/t/p/w500/2Sns5oMb356JNdBHgBETjIpRYy9.jpg',
        original_language: 'en',
        category_ids: [Category.first.id]
      }
    }

    assert_redirected_to movies_path
    assert_equal flash[:notice], 'Pelicula creada exitosamente'
  end

  test 'does not allow to create a new movie with empty fields' do
    post movies_path, params: {
      movie: {
        title: '',
        original_title: 'Jaws',
        overview: 'Un tiburón ataca a un grupo de bañistas',
        release_date: '1975-06-20',
        poster_path: 'https://image.tmdb.org/t/p/w500/2Sns5oMb356JNdBHgBETjIpRYy9.jpg',
        original_language: 'en'
      }
    }
    assert_response :unprocessable_entity
  end

  test 'render a movie edit form' do
    movie = movies(:one)
    get edit_movie_path(movie)

    assert_response :success
    assert_select 'form'
  end
  test 'allows to update a movie' do
    movie = movies(:one)
    patch movie_path(movie), params: {
      movie: {
        title: 'Tiburoncin uh ah ah',
        category_ids: [Category.first.id, Category.last.id]
      }
    }
    assert_redirected_to movies_url
    assert_equal flash[:notice], 'Pelicula actualizada exitosamente'
  end

end
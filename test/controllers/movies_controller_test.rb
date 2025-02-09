require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test 'render a list of movies' do
    get movies_path
    assert_response :success
    assert_select '.movie', 2
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
        original_language: 'en'
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


end
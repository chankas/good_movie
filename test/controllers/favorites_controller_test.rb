require "test_helper"

class FavoritesControllerTest < ActionDispatch::IntegrationTest

  setup do
    login
  end

  test "should get index" do
    get favorites_url
    assert_response :success
  end

  test "should create favorite" do
    assert_difference('Favorite.count', +1) do
      post favorites_url, params: { movie_id: movies(:titanic).id } 
    end
    
  end

  test "should destroy favorite" do
    assert_difference('Favorite.count', -1) do
      delete favorite_url(movies(:el_aro).id) 
    end
  end
end
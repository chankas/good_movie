require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
 
  setup do
   @user=  users(:andres)
  end
  test 'render a list of movies' do
    get user_url(:username => @user.username)
    assert_response :success
  end
end
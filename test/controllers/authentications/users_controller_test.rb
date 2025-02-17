
require 'test_helper'

class Authentications::UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_params = { name: 'Test User', username: 'testuser', email: 'test@example.com', password: 'password' }
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: @user_params }
    end
    
    assert_redirected_to movies_path
    assert_equal I18n.t('authentications.users.create.created'), flash[:notice]
  end

  test "should not create user with invalid params" do
    invalid_params = @user_params.merge(email: 'invalid')
    assert_no_difference('User.count') do
      post users_url, params: { user: invalid_params }
    end

    assert_response :unprocessable_entity
  end
end
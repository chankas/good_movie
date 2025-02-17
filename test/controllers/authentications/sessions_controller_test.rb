require 'test_helper'

class Authentications::SessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sessions_by_username_params = { username: 'andres', password: 'testme' }
    @sessions_by_email_params = { email: 'andres@mail.com', password: 'testme' }
    @invalid_params = { username: 'invalid', password: 'invalid' }
  end

  test "should get new" do
    get new_session_url
    assert_response :success
  end

  test "should create session by username" do
    post sessions_url, params: @sessions_by_username_params
    assert_redirected_to movies_path
    assert_equal I18n.t('authentications.sessions.create.created'), flash[:notice]
  end

  test "should create session by email" do
    post sessions_url, params: @sessions_by_email_params
    assert_redirected_to movies_path
    assert_equal I18n.t('authentications.sessions.create.created'), flash[:notice]
  end

  test "should not create session with invalid params" do
    invalid_params = @sessions_by_username_params.merge(password: 'invalid')
    post sessions_url, params: invalid_params
    assert_redirected_to new_session_path
    assert_equal I18n.t('authentications.sessions.create.invalid'), flash[:alert]
  end
  
end

require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  def setup
    @user = User.last
  end
  test "welcome" do
    
    mail = UserMailer.with(user: @user).welcome
    assert_emails 1 do
      mail.deliver_later
    end

    assert_equal "Bienvenido a Buenas Peliculas!", mail.subject
    assert_equal [@user.email], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Bienvenido #{@user.name}", mail.body.encoded
  end

end

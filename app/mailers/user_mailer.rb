class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome
    user = params[:user]
    @name = user.name
    attachments["#{t('.politics')}.pdf"] = File.read("documents/politicas_#{I18n.locale}.pdf")
    mail( to: user.email, subject: t('.subject'))
  end
end

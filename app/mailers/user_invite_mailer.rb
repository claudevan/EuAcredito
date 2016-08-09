class UserInviteMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_invite_mailer.invite_friends.subject
  #
  def invite_friends(user)
    @user = user

    @user.invites.each do |inv|
      mail to: inv.email, subject: "Try Luck"
    end

  end
end

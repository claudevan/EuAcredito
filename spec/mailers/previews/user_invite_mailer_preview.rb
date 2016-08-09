# Preview all emails at http://localhost:3000/rails/mailers/user_invite_mailer
class UserInviteMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_invite_mailer/invite_friends
  def invite_friends
    UserInviteMailerMailer.invite_friends
  end

end

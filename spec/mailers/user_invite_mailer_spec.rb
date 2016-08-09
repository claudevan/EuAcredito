require "rails_helper"

RSpec.describe UserInviteMailerMailer, type: :mailer do
  describe "invite_friends" do
    let(:mail) { UserInviteMailerMailer.invite_friends }

    it "renders the headers" do
      expect(mail.subject).to eq("Invite friends")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end

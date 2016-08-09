require 'rails_helper'

feature 'User Invite friend' do
  scenario 'Successfully' do
    user = FactoryGirl.create(:user)
    invite = FactoryGirl.build(:invite)

    visit user_path user

    click_on 'Indicar'

    fill_in 'Nome',   with: invite.name
    fill_in 'Email',  with: invite.email

    click_on 'Pronto'
  end
end

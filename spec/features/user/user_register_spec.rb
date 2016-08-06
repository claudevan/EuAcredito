require 'rails_helper'

feature 'User Register' do
  scenario 'Successfully' do
    visit root_path
    click_on "Cadastre-se"

    user = FactoryGirl.create(:user)

    fill_in 'Nome',       with: user.name
    fill_in 'Email',      with: user.email
    fill_in 'Telefone',   with: user.phone
    fill_in 'Empresa',    with: user.company
    fill_in 'Cargo',      with: user.position

    click_on "Cadastrar"

    expect(page).to have_content "Obrigado #{user.name} por se cadastrar"
  end

  scenario 'Failed' do
    visit new_user_path

    click_on "Cadastrar"

    expect(page).to have_content "Todos os campos são obrigatórios"
  end
end

# buscar_admin_steps.rb
Dado('que estou logado no OrangeHRM') do
  visit 'https://opensource-demo.orangehrmlive.com/'
  fill_in(name: 'username', with: "Admin")
  fill_in(name: 'password', with: "admin123")
  click_button(class: 'oxd-button oxd-button--medium oxd-button--main orangehrm-login-button')
end

Quando('eu acesso a seção de busca de usuários') do
  click_link 'Admin'
  click_link 'User Management'
  click_link 'Users'
end

E('eu digito {string} no campo de busca') do |termo_busca|
  fill_in 'searchSystemUser_userName', with: termo_busca
end

E('eu clico no botão de busca') do
  click_button 'searchBtn'
end

Então('o sistema exibe os resultados da busca contendo {string} nos resultados') do |termo_busca|
  expect(page).to have_content(termo_busca)
end
Dado("que estou na página de login") do
  visit "/"
end

Quando("faço login com usuário {string} e senha {string}") do |usuario, senha|
  fill_in(name: 'username', with: "Admin")
  fill_in(name: 'password', with: "admin123")
  click_button(class: 'oxd-button oxd-button--medium oxd-button--main orangehrm-login-button')
end

Então("devo estar logado com sucesso") do
  expect(page).to have_content "Dashboard"
end
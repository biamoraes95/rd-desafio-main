Before '@cadastro_admin' do
    visit 'https://opensource-demo.orangehrmlive.com/'
    fill_in(name: 'username', with: "Admin")
    fill_in(name: 'password', with: "admin123")
    click_button(class: 'oxd-button oxd-button--medium oxd-button--main orangehrm-login-button')
end
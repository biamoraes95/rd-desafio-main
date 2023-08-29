Dado("que eu estou na página de administração") do
  click_on('Admin')
  end

  Quando("eu clico em {string}") do |botao|
    click_on('Add')
  end

  E("preencho o formulário de cadastro do Admin com os seguintes dados:") do |tabela_dados|
    dados = tabela_dados.hashes.first
    find(:xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[4]/div/div[2]/input').set(dados['Username'])
    find(:xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[1]/div/div[2]/input').set(dados['Password'])
    find(:xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[2]/div/div[2]/div/div[2]/input').set(dados['Confirm Password'])
    find(:xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[2]/div/div[2]/div/div/input').set(dados['Employee Name'])
    find(:xpath, '//*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[3]/div/div[2]/div')

    # formulario = find('#app form')
    # formulario.find('input#username').set(dados['Username'])
    # formulario.find('input#password').set(dados['Password'])
    # formulario.find('input#confirm_password').set(dados['Confirm Password'])
    # formulario.find('input#employee_name').set(dados['Employee Name'])
  end

  E("clico em {string}") do |botao|
    click_button botao
  end

  Então("o Admin {string} deve ser cadastrado com sucesso") do |nome_admin|
    expect(page).to have_content 'Successfully Saved'
    expect(page).to have_content nome_admin
  end

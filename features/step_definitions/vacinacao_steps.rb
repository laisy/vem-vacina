Given ('eu estou logada no sistema com o cpf {string} e a senha {string}') do |cpf, senha|
  visit "/usuarios/new"
  fill_in 'usuario[nome]', :with => "patricia"
  fill_in 'usuario[data_nascimento]', :with => "1999-05-21"
  fill_in 'usuario[cpf]', :with => cpf.to_i
  fill_in 'usuario[senha]', :with => senha
  fill_in 'usuario[nome_mae]', :with => "Juliana"
  fill_in 'usuario[telefone]', :with => 87999643288
  fill_in 'usuario[email]', :with => "patricia@email.com"
  fill_in 'cep', :with => 55360000
  fill_in 'cidade', :with => "Garanhuns"
  fill_in 'bairro', :with => "Magano"
  fill_in 'logradouro', :with => "Rua Alto do Magano"
  fill_in 'complemento', :with => ""
  click_button 'salvar'
  visit "/login"
  fill_in 'cpf', :with => cpf.to_i
  fill_in 'senha', :with => senha
  click_button 'Login'
end
Given('eu estou na pagina de cadastro de vacinacao') do 
  click_link 'Nova Vacinação'
end
When("eu crio uma vacinacao com o nome vacina {string} e a descricao de localizacao {string} e a Data {string} e horario {string}") do |nome_vacina, descricao_localizacao, data, horario|
  fill_in 'vacinacao[nome_vacina]', :with => nome_vacina
  fill_in 'vacinacao[descricao_localizacao]', :with => descricao_localizacao
  fill_in 'vacinacao[data]', :with => data.to_date
  fill_in 'vacinacao[horario]', :with => horario.to_time
end
When("eu clico em criar uma vacinacao") do 
  click_button 'salvar'
end
Then("eu vejo que uma vacina com o nome {string} foi criada") do |nome|
  expect(page).to have_content(nome)
end 
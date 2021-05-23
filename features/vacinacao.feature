Feature: vacinacao
  As a usuario do sistema 
  I want to criar, remover, editar e atualização uma vacinacao no sistema
  So that eu nao quero fazer isso manualmente

  Scenario: cadastrar uma nova vacinacao corretamente
    Given eu estou logada no sistema com o cpf '14725836912' e a senha '123456'
    And eu estou na pagina de cadastro de vacinacao
    When eu crio uma vacinacao com o nome vacina 'CoronaVac' e a descricao de localizacao 'Posto de saúde II' e a Data '2021-07-21' e horario '14:30:00'
    And eu clico em criar uma vacinacao 
    Then eu vejo que uma vacina com o nome 'CoronaVac' foi criada

  Scenario: editar uma vacinacao corretamente
    Given eu estou logada no sistema com o cpf '14725836912' e a senha '123456'
    And eu estou na pagina de cadastro de vacinacao
    When eu crio uma vacinacao com o nome vacina 'CoronaVac' e a descricao de localizacao 'Posto de saúde II' e a Data '2021-07-21' e horario '14:30:00'
    And eu clico em criar uma vacinacao 
    And eu estou na pagina de edicao da vacinacao de nome 'CoronaVac'
    And eu edito uma vacinacao com o nome vacina 'CoronaVac segunda dose' e a descricao de localizacao 'Posto de saúde II' e a Data '2021-07-21' e horario '14:30:00'
    And eu clico em editar uma vacinacao 
    Then eu vejo que uma vacina com o nome 'CoronaVac segunda dose' foi atualizada

  Scenario: cadastrar uma nova vacinacao sem o nome
    Given eu estou logada no sistema com o cpf '14725836912' e a senha '123456'
    And eu estou na pagina de cadastro de vacinacao
    When eu crio uma vacinacao com o nome vacina '' e a descricao de localizacao 'Posto de saúde II' e a Data '2021-07-21' e horario '14:30:00'
    And eu clico em criar uma vacinacao 
    Then eu vejo uma mensagem de erro

  Scenario: cadastrar uma nova vacinacao com titulo com um caractere
    Given eu estou logada no sistema com o cpf '14725836912' e a senha '123456'
    And eu estou na pagina de cadastro de vacinacao
    When eu crio uma vacinacao com o nome vacina 'a' e a descricao de localizacao 'Posto de saúde II' e a Data '2021-07-21' e horario '14:30:00'
    And eu clico em criar uma vacinacao 
    Then eu vejo uma mensagem de erro
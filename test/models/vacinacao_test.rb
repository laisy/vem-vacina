require 'test_helper'

class VacinacaoTest < ActiveSupport::TestCase
  test "criando agendamento de vacinacao" do
    usuario = Usuario.new(nome:'Ana Maria ', data_nascimento: '1999-05-21', cpf: 12345678956, senha: '123456', nome_mae: 'Ana Cristina', telefone: 87996226421, email: 'anamariaa@email.com', :endereco_attributes=>{cep: '55360000', cidade: 'Caetes', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: ''})
    usuario.save
    vacinacao = Vacinacao.new(nome_vacina: 'Covid-19', descricao_localizacao: 'Posto de saude Caetes', data: '2021-06-19', horario: '13:00', usuario_id: usuario.id)
    assert vacinacao.save
    end
  test "atualizando o agendamento de vacinacao" do
    usuario = Usuario.new(nome:'Ana Maria ', data_nascimento: '1999-05-21', cpf: 12345678956, senha: '123456', nome_mae: 'Ana Cristina', telefone: 87996226421, email: 'anamariaa@email.com', :endereco_attributes=>{cep: '55360000', cidade: 'Caetes', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: ''})
    usuario.save
    vacinacao = Vacinacao.new(nome_vacina: 'Covid-19', descricao_localizacao: 'Posto de saude Caetes', data: '2021-06-19', horario: '13:00', usuario_id: usuario.id)
    assert vacinacao.update(nome_vacina: 'Covid-19 1° dose', descricao_localizacao: 'Posto de saude Caetes', data: '2021-06-19', horario: '13:00', usuario_id: usuario.id)
    end
  test "criando agendamento de vacinacao sem nome da vacina" do
    usuario = Usuario.new(nome:'Ana Maria ', data_nascimento: '1999-05-21', cpf: 12345678956, senha: '123456', nome_mae: 'Ana Cristina', telefone: 87996226421, email: 'anamariaa@email.com', :endereco_attributes=>{cep: '55360000', cidade: 'Caetes', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: ''})
    usuario.save
    vacinacao = Vacinacao.new(nome_vacina: '', descricao_localizacao: 'Posto de saude Caetes', data: '2021-06-19', horario: '13:00', usuario_id: usuario.id)
    assert_not vacinacao.save
    end
  test "atualizando o agendamento de vacinacao com data passada" do
    usuario = Usuario.new(nome:'Ana Maria ', data_nascimento: '1999-05-21', cpf: 12345678956, senha: '123456', nome_mae: 'Ana Cristina', telefone: 87996226421, email: 'anamariaa@email.com', :endereco_attributes=>{cep: '55360000', cidade: 'Caetes', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: ''})
    usuario.save
    vacinacao = Vacinacao.new(nome_vacina: 'Covid-19', descricao_localizacao: 'Posto de saude Caetes', data: '2021-06-19', horario: '13:00', usuario_id: usuario.id)
    assert_not vacinacao.update(nome_vacina: 'Covid-19 1° dose', descricao_localizacao: 'Posto de saude Caetes', data: '2020-06-19', horario: '13:00', usuario_id: usuario.id)
    end
end

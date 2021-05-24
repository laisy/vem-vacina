require 'test_helper'

class UsuarioTest < ActiveSupport::TestCase
   test "criando usuario" do
    usuario = Usuario.new(nome:'Ana Maria ', data_nascimento: '1999-05-21', cpf: 12345678956, senha: '123456', nome_mae: 'Ana Cristina', telefone: 87996226421, email: 'anamariaa@email.com', :endereco_attributes=>{cep: '55360000', cidade: 'Caetes', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: ''})
    assert usuario.save
    end
  test "editando usuario" do
    usuario = Usuario.new(nome:'Ana Maria ', data_nascimento: '1999-05-21', cpf: 12345678956, senha: '123456', nome_mae: 'Ana Cristina', telefone: 87996226421, email: 'anamariaa@email.com', :endereco_attributes=>{cep: '55360000', cidade: 'Caetes', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: ''})
    usuario.save
    assert usuario.update(nome:'Ana Maria da Silva', data_nascimento: '1999-05-21', cpf: 12345678956, senha: '123456', nome_mae: 'Ana Cristina', telefone: 87996226421, email: 'anamariaa@email.com', :endereco_attributes=>{cep: '55360000', cidade: 'Caetes', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: '', id: usuario.id})
   end
   test "criando usuario sem nome da mae" do
    usuario = Usuario.new(nome:'Ana Maria ', data_nascimento: '1999-05-21', cpf: 12345678956, senha: '123456', nome_mae: '', telefone: 87996226421, email: 'anamariaa@email.com', :endereco_attributes=>{cep: '55360000', cidade: 'Caetes', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: ''})
    assert_not usuario.save
   end
   test "editando usuario com nome com um caracte" do
    usuario = Usuario.new(nome:'Ana Maria ', data_nascimento: '1999-05-21', cpf: 12345678956, senha: '123456', nome_mae: '', telefone: 87996226421, email: 'anamariaa@email.com', :endereco_attributes=>{cep: '55360000', cidade: 'Caetes', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: ''})
    usuario.save
    assert_not usuario.update(nome:'A', data_nascimento: '1999-05-21', cpf: 12345678956, senha: '123456', nome_mae: 'Ana Cristina', telefone: 87996226421, email: 'anamariaa@email.com', :endereco_attributes=>{cep: '55360000', cidade: 'Caetes', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: '', id: usuario.id})
   end
end

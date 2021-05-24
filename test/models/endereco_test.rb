require 'test_helper'

class EnderecoTest < ActiveSupport::TestCase
  test "criando endereco" do
    usuario = Usuario.new(nome:'Ana Maria ', data_nascimento: '1999-05-21', cpf: 12345678956, senha: '123456', nome_mae: 'Ana Cristina', telefone: 87996226421, email: 'anamariaa@email.com')
    usuario.save
    endereco = Endereco.new(cep: '55360000', cidade: 'Caetes', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: '', usuario_id: usuario.id)
    assert endereco.save
    end
  test "atualizando endereco" do
    usuario = Usuario.new(nome:'Ana Maria ', data_nascimento: '1999-05-21', cpf: 12345678956, senha: '123456', nome_mae: 'Ana Cristina', telefone: 87996226421, email: 'anamariaa@email.com')
    usuario.save
    endereco = Endereco.new(cep: '55360000', cidade: 'Caetes', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: '', usuario_id: usuario.id)
    assert endereco.update(cep: '55360000', cidade: 'Caetes-PE', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: '', usuario_id: usuario.id)
    end
  test "criando endereco sem cep" do
    usuario = Usuario.new(nome:'Ana Maria ', data_nascimento: '1999-05-21', cpf: 12345678956, senha: '123456', nome_mae: 'Ana Cristina', telefone: 87996226421, email: 'anamariaa@email.com')
    usuario.save
    endereco = Endereco.new(cep: '', cidade: 'Caetes', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: '', usuario_id: usuario.id)
    assert_not endereco.save
    end
  test "atualizando endereco sem cep" do
    usuario = Usuario.new(nome:'Ana Maria ', data_nascimento: '1999-05-21', cpf: 12345678956, senha: '123456', nome_mae: 'Ana Cristina', telefone: 87996226421, email: 'anamariaa@email.com')
    usuario.save
    endereco = Endereco.new(cep: '', cidade: 'Caetes', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: '', usuario_id: usuario.id)
    assert_not endereco.save
  end

  test "atualizando endereco sem referencia pra usuario" do
    usuario = Usuario.new(nome:'Ana Maria ', data_nascimento: '1999-05-21', cpf: 12345678956, senha: '123456', nome_mae: 'Ana Cristina', telefone: 87996226421, email: 'anamariaa@email.com')
    usuario.save
    endereco = Endereco.new(cep: '55360000', cidade: 'Caetes', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: '', usuario_id: usuario.id)
    assert_not endereco.update(cep: '55360000', cidade: 'Caetes-PE', bairro: 'Centro', logradouro: 'Rua José Frazão. 25', complemento: '', usuario_id: '')
  end
end

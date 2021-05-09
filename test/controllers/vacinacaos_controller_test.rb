require 'test_helper'

class VacinacaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vacinacao = vacinacaos(:one)
  end

  test "should get index" do
    get vacinacaos_url
    assert_response :success
  end

  test "should get new" do
    get new_vacinacao_url
    assert_response :success
  end

  test "should create vacinacao" do
    assert_difference('Vacinacao.count') do
      post vacinacaos_url, params: { vacinacao: { data: @vacinacao.data, descricao_localizacao: @vacinacao.descricao_localizacao, horario: @vacinacao.horario, nome_vacina: @vacinacao.nome_vacina } }
    end

    assert_redirected_to vacinacao_url(Vacinacao.last)
  end

  test "should show vacinacao" do
    get vacinacao_url(@vacinacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_vacinacao_url(@vacinacao)
    assert_response :success
  end

  test "should update vacinacao" do
    patch vacinacao_url(@vacinacao), params: { vacinacao: { data: @vacinacao.data, descricao_localizacao: @vacinacao.descricao_localizacao, horario: @vacinacao.horario, nome_vacina: @vacinacao.nome_vacina } }
    assert_redirected_to vacinacao_url(@vacinacao)
  end

  test "should destroy vacinacao" do
    assert_difference('Vacinacao.count', -1) do
      delete vacinacao_url(@vacinacao)
    end

    assert_redirected_to vacinacaos_url
  end
end

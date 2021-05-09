require "application_system_test_case"

class VacinacaosTest < ApplicationSystemTestCase
  setup do
    @vacinacao = vacinacaos(:one)
  end

  test "visiting the index" do
    visit vacinacaos_url
    assert_selector "h1", text: "Vacinacaos"
  end

  test "creating a Vacinacao" do
    visit vacinacaos_url
    click_on "New Vacinacao"

    fill_in "Data", with: @vacinacao.data
    fill_in "Descricao localizacao", with: @vacinacao.descricao_localizacao
    fill_in "Horario", with: @vacinacao.horario
    fill_in "Nome vacina", with: @vacinacao.nome_vacina
    click_on "Create Vacinacao"

    assert_text "Vacinacao was successfully created"
    click_on "Back"
  end

  test "updating a Vacinacao" do
    visit vacinacaos_url
    click_on "Edit", match: :first

    fill_in "Data", with: @vacinacao.data
    fill_in "Descricao localizacao", with: @vacinacao.descricao_localizacao
    fill_in "Horario", with: @vacinacao.horario
    fill_in "Nome vacina", with: @vacinacao.nome_vacina
    click_on "Update Vacinacao"

    assert_text "Vacinacao was successfully updated"
    click_on "Back"
  end

  test "destroying a Vacinacao" do
    visit vacinacaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Vacinacao was successfully destroyed"
  end
end

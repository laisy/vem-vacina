json.extract! vacinacao, :id, :nome_vacina, :descricao_localizacao, :data, :horario, :created_at, :updated_at
json.url vacinacao_url(vacinacao, format: :json)

json.extract! usuario, :id, :nome, :data_nascimento, :cpf, :senha, :nome_mae, :telefone, :email, :endereco_id, :vacinacao_id :created_at, :updated_at
json.url usuario_url(usuario, format: :json)

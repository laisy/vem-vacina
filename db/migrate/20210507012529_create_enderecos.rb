class CreateEnderecos < ActiveRecord::Migration[6.0]
  def change
    create_table :enderecos, if_not_exists: true do |t|
      t.integer :cep
      t.string :cidade
      t.string :bairro
      t.string :logradouro
      t.string :complemento

      t.timestamps
    end
  end
end

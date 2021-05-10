class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.date :data_nascimento
      t.integer :cpf
      t.string :senha
      t.string :nome_mae
      t.integer :telefone
      t.string :email
      t.references :endereco, null: false, foreign_key: true

      t.timestamps
    end
  end
end

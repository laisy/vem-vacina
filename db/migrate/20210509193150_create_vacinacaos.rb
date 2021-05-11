class CreateVacinacaos < ActiveRecord::Migration[6.0]
  def change
    create_table :vacinacaos do |t|
      t.string :nome_vacina
      t.text :descricao_localizacao
      t.date :data
      t.time :horario
      t.references :usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end

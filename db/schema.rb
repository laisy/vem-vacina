# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_09_193150) do

  create_table "enderecos", force: :cascade do |t|
    t.integer "cep"
    t.string "cidade"
    t.string "bairro"
    t.string "logradouro"
    t.string "complemento"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.date "data_nascimento"
    t.integer "cpf"
    t.string "senha"
    t.string "nome_mae"
    t.integer "telefone"
    t.string "email"
    t.integer "endereco_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["endereco_id"], name: "index_usuarios_on_endereco_id"
  end

  create_table "vacinacaos", force: :cascade do |t|
    t.string "nome_vacina"
    t.text "descricao_localizacao"
    t.date "data"
    t.time "horario"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "usuarios", "enderecos"
end

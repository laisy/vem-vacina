class Usuario < ApplicationRecord
  validates :cpf, presence: true, uniqueness: true,  numericality: { only_integer: true }
  validates :nome, presence: true, length: {minimum: 3, too_short: "%{count} caracteres é o minimo permitido ", maximum: 50, too_long: "%{count} caracteres é o máximo permitido " }
  validates :email, presence: true, uniqueness: true, length: {minimum: 3, too_short: "%{count} caracteres é o minimo permitido ", maximum: 50, too_long: "%{count} caracteres é o máximo permitido " }
  validates :senha, presence: true, length: {minimum: 5}, confirmation: true
  validates :data_nascimento, presence: true
  validates :nome_mae, presence: true, length: {minimum: 3, too_short: "%{count} caracteres é o minimo permitido ", maximum: 50, too_long: "%{count} caracteres é o máximo permitido " }
  validates :telefone, presence: true, numericality: { only_integer: true }, length: {minimum: 9, maximum: 19}

  has_one :endereco
  accepts_nested_attributes_for :endereco, reject_if: :all_blank,allow_destroy: true
  validates_associated :endereco

  has_many :vacinacao
  accepts_nested_attributes_for :vacinacao
  validates_associated :vacinacao
  
end

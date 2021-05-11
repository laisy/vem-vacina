class Usuario < ApplicationRecord

  validates :cpf, presence: true, uniqueness: true,  numericality: { only_integer: true }
  validates :nome, presence: true, length: {minimum: 3, too_short: "%{count} caracteres é o minimo permitido ", maximum: 50, too_long: "%{count} caracteres é o máximo permitido " }
  validates :email, presence: true, uniqueness: true, length: {minimum: 3, too_short: "%{count} caracteres é o minimo permitido ", maximum: 50, too_long: "%{count} caracteres é o máximo permitido " }
  validates :senha, presence: true, length: {minimum: 5}
  validates :data_nascimento, presence: true
  validates :nome_mae, presence: true, length: {minimum: 3, too_short: "%{count} caracteres é o minimo permitido ", maximum: 50, too_long: "%{count} caracteres é o máximo permitido " }
  validates :telefone, presence: true, numericality: { only_integer: true }, length: {minimum: 9, maximum: 19}

  has_one :endereco
  has_many :vacinacao

  def autenticar(senha_view)
    if self.senha != senha_view
        return false
    else
      return true
    end
  end
  
end

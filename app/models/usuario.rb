class Usuario < ApplicationRecord
  #has_secure_password
  
  validates :cpf, presence: true, uniqueness: true,  numericality: { only_integer: true },  length: {is: 11}
  validates :nome, presence: true, length: {minimum: 3, too_short: "%{count} caracteres é o minimo permitido ", maximum: 50, too_long: "%{count} caracteres é o máximo permitido " }
  validates :email, presence: true, uniqueness: true, length: {minimum: 3, too_short: "%{count} caracteres é o minimo permitido ", maximum: 50, too_long: "%{count} caracteres é o máximo permitido " }
  validates :senha, presence: true, length: {minimum: 5}
  validate :validarDataNascimento
  validates :nome_mae, presence: true, length: {minimum: 3, too_short: "%{count} caracteres é o minimo permitido ", maximum: 50, too_long: "%{count} caracteres é o máximo permitido " }
  validates :telefone, presence: true, numericality: { only_integer: true }, length: {is: 11}

  has_one :endereco
  has_many :vacinacaos

  accepts_nested_attributes_for :endereco, allow_destroy: true

  def autenticar(senha_view)
    if self.senha != senha_view
        return false
    else
      return true
    end
  end

  def validarDataNascimento
    if data_nascimento.present? && data_nascimento > Date.today
      errors.add(:data_nascimento, "não pode ser no futuro")
    end
  end
  
end

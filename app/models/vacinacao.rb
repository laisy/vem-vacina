class Vacinacao < ApplicationRecord
  belongs_to :usuario
  
  validates :nome_vacina, presence: true, length: {minimum: 3, too_short: "%{count} caracteres é o minimo permitido ", maximum:50, too_long: "%{count} caracteres é o máximo permitido " }
  validates :descricao_localizacao, presence: true,  length: {minimum: 3, too_short: "%{count} caracteres é o minimo permitido "}
  validate :validarData
  validates :horario, presence: true

  def validarData
    if data.present? && data < Date.today
      errors.add(:data, "não pode ser no passado")
    end
  end

end

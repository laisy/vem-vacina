class Endereco < ApplicationRecord
  belongs_to :usuario
  
  validates :cep, presence: true, numericality: { only_integer: true }, length: 8
  validates :cidade, presence: true, length: {minimum: 3, too_short: "%{count} caracteres é o minimo permitido ", maximum:50, too_long: "%{count} caracteres é o máximo permitido " }
  validates :bairro, presence: true, length: {minimum: 3, too_short: "%{count} caracteres é o minimo permitido ", maximum:50, too_long: "%{count} caracteres é o máximo permitido " }
  validates :logradouro, presence: true, length: {minimum: 3, too_short: "%{count} caracteres é o minimo permitido ", maximum:50, too_long: "%{count} caracteres é o máximo permitido " }
  validates :complemento, length: {maximum:50, too_long: "%{count} caracteres é o máximo permitido " }

end

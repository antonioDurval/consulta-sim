class Paciente < ApplicationRecord
  validates :nome, presence: true, length: {minimum: 5}
  validates :cpf, presence: true, numericality: true, uniqueness: true
  validates :email, uniqueness: true, length: {maximum: 100}
  has_many :consultums
  has_many :medicos, through: :consultums
end

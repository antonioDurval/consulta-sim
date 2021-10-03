class Paciente < ApplicationRecord
  validates :nome, presence: true, length: {minimum: 3}
  validates :cpf, presence: true, numericality: true, uniqueness: true
  validates :email, uniqueness: true
  has_many :consultums
  has_many :medicos, through: :consultums
end

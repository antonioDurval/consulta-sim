class Medico < ApplicationRecord
  validates :nome, presence: true, length: {minimum: 3, maximum: 100}
  validates :cpf, presence: true, numericality: true, uniqueness: true
  validates :email, uniqueness: true
  validates :especialidade, presence: true
  validates :crm, uniqueness: true, presence: true
  has_many :consultums
  has_many :pacientes, through: :consultums
end

class Medico < ApplicationRecord
  validates :nome, presence: true, length: {minimum: 3}
  validates :cpf, presence: true, numericality: true, uniqueness: true
  validates :email, uniqueness: true
  validates :crm, uniqueness: true, presence: true
  has_many :consultums
  has_many :pacientes, through: :consultums
end

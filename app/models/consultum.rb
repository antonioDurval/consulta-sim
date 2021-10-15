class Consultum < ApplicationRecord
  validates :data, presence: true, length: {minimum: 10}
  validates :hora, presence: true, length: {maximum: 5}
  belongs_to :paciente
  belongs_to :medico
end

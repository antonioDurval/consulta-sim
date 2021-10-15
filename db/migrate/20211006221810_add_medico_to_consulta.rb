class AddMedicoToConsulta < ActiveRecord::Migration[6.1]
  def change
    add_reference :consulta, :medico, foreign_key: true
  end
end

class AddPacienteToConsulta < ActiveRecord::Migration[6.1]
  def change
    add_reference :consulta, :paciente, null: false, foreign_key: true
  end
end

class AddPacienteToConsulta < ActiveRecord::Migration[6.1]
  def change
    add_reference :consulta, :paciente, foreign_key: true
  end
end

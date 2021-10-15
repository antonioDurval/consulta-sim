class CreatePacientes < ActiveRecord::Migration[6.1]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :cpf
      t.string :email
      t.string :nascimento

      t.timestamps
    end
  end
end

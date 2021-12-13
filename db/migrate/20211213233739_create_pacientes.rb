class CreatePacientes < ActiveRecord::Migration[6.1]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.date :data_nascimento
      t.string :cpf
      t.string :email

      t.timestamps
    end
  end
end

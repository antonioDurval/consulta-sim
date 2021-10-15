class CreateConsulta < ActiveRecord::Migration[6.1]
  def change
    create_table :consulta do |t|
      t.string :hora
      t.string :data

      t.timestamps
    end
  end
end

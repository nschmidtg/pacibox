class CreatePacientes < ActiveRecord::Migration[5.0]
  def change
    create_table :pacientes do |t|
      t.string :name
      t.string :last_name
      t.string :rut
      t.string :address
      t.string :mail
      t.date :birthdate
      t.string :phone

      t.timestamps
    end
  end
end

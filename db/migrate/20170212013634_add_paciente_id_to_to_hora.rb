class AddPacienteIdToToHora < ActiveRecord::Migration[5.0]
  def change
    add_column :horas, :paciente_id, :integer
  end
end

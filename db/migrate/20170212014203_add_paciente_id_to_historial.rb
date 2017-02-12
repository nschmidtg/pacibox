class AddPacienteIdToHistorial < ActiveRecord::Migration[5.0]
  def change
    add_column :historials, :paciente_id, :integer
  end
end

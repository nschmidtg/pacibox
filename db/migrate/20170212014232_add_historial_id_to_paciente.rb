class AddHistorialIdToPaciente < ActiveRecord::Migration[5.0]
  def change
    add_column :pacientes, :historial_id, :integer
  end
end

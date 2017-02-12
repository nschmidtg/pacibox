class AddHistorialIdToFicha < ActiveRecord::Migration[5.0]
  def change
    add_column :fichas, :historial_id, :integer
  end
end

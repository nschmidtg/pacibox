class AddHistorialIdToEvento < ActiveRecord::Migration[5.0]
  def change
    add_column :eventos, :historial_id, :integer
  end
end

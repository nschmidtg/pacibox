class AddHoraIdToFicha < ActiveRecord::Migration[5.0]
  def change
    add_column :fichas, :hora_id, :integer
  end
end

class AddFichaIdToHora < ActiveRecord::Migration[5.0]
  def change
    add_column :horas, :ficha_id, :integer
  end
end

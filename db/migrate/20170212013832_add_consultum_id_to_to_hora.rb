class AddConsultumIdToToHora < ActiveRecord::Migration[5.0]
  def change
    add_column :horas, :consultum_id, :integer
  end
end

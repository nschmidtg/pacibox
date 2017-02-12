class AddUserIdToPaciente < ActiveRecord::Migration[5.0]
  def change
    add_column :pacientes, :user_id, :integer
  end
end

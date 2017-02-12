class AddUserIdToToHora < ActiveRecord::Migration[5.0]
  def change
    add_column :horas, :user_id, :integer
  end
end

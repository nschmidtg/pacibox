class AddOwnerIdToConsultum < ActiveRecord::Migration[5.0]
  def change
    add_column :consulta, :owner_id, :integer
  end
end

class CreateUsersConsultumsJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :consulta_users, id: false do |t|
      t.integer :consultum_id
      t.integer :user_id
    end
  end
end
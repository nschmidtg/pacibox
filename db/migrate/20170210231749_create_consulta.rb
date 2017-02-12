class CreateConsulta < ActiveRecord::Migration[5.0]
  def change
    create_table :consulta do |t|
      t.string :name
      t.string :coords
      t.string :address
      t.integer :value

      t.timestamps
    end
  end
end

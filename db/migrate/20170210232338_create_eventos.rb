class CreateEventos < ActiveRecord::Migration[5.0]
  def change
    create_table :eventos do |t|
      t.datetime :date
      t.string :comment

      t.timestamps
    end
  end
end

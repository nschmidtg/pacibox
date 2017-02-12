class CreateHoras < ActiveRecord::Migration[5.0]
  def change
    create_table :horas do |t|
      t.datetime :date
      t.string :comment

      t.timestamps
    end
  end
end

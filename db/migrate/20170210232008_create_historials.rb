class CreateHistorials < ActiveRecord::Migration[5.0]
  def change
    create_table :historials do |t|
      t.date :first_date

      t.timestamps
    end
  end
end

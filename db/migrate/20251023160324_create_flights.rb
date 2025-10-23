class CreateFlights < ActiveRecord::Migration[8.0]
  def change
    create_table :flights do |t|
      t.references :airport_from, null: false, foreign_key: true
      t.references :airport_to, null: false, foreign_key: true
      t.datetime :start
      t.integer :duration

      t.timestamps
    end
  end
end

class CreateStations < ActiveRecord::Migration[6.1]
  def change
    create_table :stations do |t|
      t.string :line_name
      t.string :station_name
      t.integer :minites
      t.references :prop, foreign_key: true

      t.timestamps
    end
  end
end

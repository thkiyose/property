class CreateProps < ActiveRecord::Migration[6.1]
  def change
    create_table :props do |t|
      t.string :name, null:false
      t.integer :rent
      t.string :address, null: false
      t.integer :years_old
      t.text :comment

      t.timestamps
    end
  end
end

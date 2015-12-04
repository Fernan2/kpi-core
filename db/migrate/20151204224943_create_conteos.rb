class CreateConteos < ActiveRecord::Migration
  def change
    create_table :conteos do |t|
      t.date :dia
      t.integer :loc_core
      t.integer :loc_total
      t.decimal :ratio, precision: 4, scale: 2

      t.timestamps null: false
    end
  end
end

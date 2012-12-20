class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
      t.integer :shipping_line_id
      t.integer :load_capacity
      t.integer :volume_capacity
      t.string :ship_make
      t.string :ship_model
      t.integer :ship_model_year

      t.timestamps
    end
  end
end

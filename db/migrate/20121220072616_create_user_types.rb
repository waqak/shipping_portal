class CreateUserTypes < ActiveRecord::Migration
  def change
    create_table :user_types do |t|
      t.string :user_type
      t.text :description

      t.timestamps
    end
  end
end

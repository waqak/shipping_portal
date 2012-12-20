class CreateShippingLines < ActiveRecord::Migration
  def change
    create_table :shipping_lines do |t|
      t.integer :user_id
      t.text :address
      t.string :email
      t.string :contact_person
      t.string :contact_number

      t.timestamps
    end
  end
end

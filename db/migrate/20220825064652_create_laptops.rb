class CreateLaptops < ActiveRecord::Migration[6.1]
  def change
    create_table :laptops do |t|
      t.string :brand
      t.string :model
      t.integer :price

      t.timestamps
    end
  end
end

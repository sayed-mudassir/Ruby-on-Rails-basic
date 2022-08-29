class CreateShoes < ActiveRecord::Migration[6.1]
  def change
    create_table :shoes do |t|
      t.string :brand
      t.integer :size
      t.integer :price
      
      t.timestamps
    end
  end
end

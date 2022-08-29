class CreateAnimals < ActiveRecord::Migration[6.1]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :animal_type
      t.integer :count
      

      t.timestamps
    end
  end
end

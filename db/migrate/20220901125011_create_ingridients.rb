class CreateIngridients < ActiveRecord::Migration[6.1]
  def change
    create_table :ingridients do |t|
      t.string :item
      t.integer :amount
      t.belongs_to :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end

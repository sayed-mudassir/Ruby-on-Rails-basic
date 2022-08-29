class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.string :title
      t.string :body
      t.integer :page_num
      
      t.timestamps
    end
  end
end

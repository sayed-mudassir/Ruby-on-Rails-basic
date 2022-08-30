class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.integer :student_id
      t.string :name
      t.integer :score
      
      t.timestamps
    end
  end
end

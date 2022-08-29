class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :student_class
      t.integer :roll_no
      
      t.timestamps
    end
  end
end

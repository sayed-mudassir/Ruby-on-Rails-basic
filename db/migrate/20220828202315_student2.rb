class Student2 < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :status, :integer, default: 0
  end
end

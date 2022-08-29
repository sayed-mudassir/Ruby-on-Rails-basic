class AddStatusToBirds < ActiveRecord::Migration[6.1]
  def change
    add_column :birds, :status, :integer, default: 0
  end
end

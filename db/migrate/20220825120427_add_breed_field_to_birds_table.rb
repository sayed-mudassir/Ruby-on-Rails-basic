class AddBreedFieldToBirdsTable < ActiveRecord::Migration[6.1]
  def change
    add_column :birds, :breed, :string, after: :size
  end
end

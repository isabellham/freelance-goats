class ChangeTypeOfPrice < ActiveRecord::Migration[7.0]
  def change
    change_column :goats, :price, :integer
  end
end

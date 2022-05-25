class RemoveTypeFromGoats < ActiveRecord::Migration[7.0]
  def change
    remove_column :goats, :type
  end
end

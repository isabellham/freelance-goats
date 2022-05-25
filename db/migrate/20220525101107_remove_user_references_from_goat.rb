class RemoveUserReferencesFromGoat < ActiveRecord::Migration[7.0]
  def change
    remove_column :goats, :user_references
  end
end

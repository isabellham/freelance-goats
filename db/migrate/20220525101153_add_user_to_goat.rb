class AddUserToGoat < ActiveRecord::Migration[7.0]
  def change
    add_reference :goats, :user
    add_foreign_key :goats, :users
  end
end

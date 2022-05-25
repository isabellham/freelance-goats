class AddGoattypeToGoat < ActiveRecord::Migration[7.0]
  def change
    add_column :goats, :goattype, :string
  end
end

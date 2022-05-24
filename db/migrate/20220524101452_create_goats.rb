class CreateGoats < ActiveRecord::Migration[7.0]
  def change
    create_table :goats do |t|
      t.string :name
      t.string :type
      t.string :city
      t.string :breed
      t.string :gender
      t.text :description
      t.string :image_url
      t.float :price
      t.string :user_references

      t.timestamps
    end
  end
end

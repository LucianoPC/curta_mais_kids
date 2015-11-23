class CreateChildrenPlayrooms < ActiveRecord::Migration
  def change
    create_table :children_playrooms do |t|
      t.string :name
      t.text :description
      t.integer :rating, default: 0
      t.float :price
      t.string :address
      t.string :photo
      t.string :phone
      t.string :localization
      t.text :toys, array: true, default: []

      t.timestamps null: false
    end
  end
end

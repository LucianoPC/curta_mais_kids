class CreateChildrenPlaces < ActiveRecord::Migration
  def change
    create_table :children_places do |t|
      t.string :name
      t.text :description
      t.integer :rating, default: 0
      t.float :price
      t.string :address
      t.string :photo
      t.string :phone
      t.string :localization

      t.timestamps null: false
    end
  end
end

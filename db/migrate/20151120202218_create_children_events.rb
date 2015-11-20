class CreateChildrenEvents < ActiveRecord::Migration
  def change
    create_table :children_events do |t|
      t.string :title
      t.text :description
      t.integer :rating
      t.float :price
      t.datetime :date_time
      t.string :phone
      t.string :localization

      t.timestamps null: false
    end
  end
end

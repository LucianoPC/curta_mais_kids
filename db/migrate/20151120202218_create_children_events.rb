class CreateChildrenEvents < ActiveRecord::Migration
  def change
    create_table :children_events do |t|
      t.string :title
      t.string :sub_title
      t.text :description
      t.string :address
      t.integer :rating
      t.binary :photo
      t.datetime :date_time

      t.timestamps null: false
    end
  end
end

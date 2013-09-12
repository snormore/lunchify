class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      
      t.integer :food_item_id
      t.integer :menu_id

      t.timestamps
    end
  end
end

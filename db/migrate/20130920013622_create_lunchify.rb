class CreateLunchify < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.date :day

      t.timestamps
    end
    
    create_table :food_items do |t|
      
      t.string :name
      t.text :description

      t.timestamps
    end

    create_table :menu_items do |t|
      
      t.belongs_to :food_item
      t.belongs_to :menu

      t.timestamps
    end
    
    create_table :votes do |t|
      t.integer :votes, :default => 0
      t.references :menu_item, index: true

      t.timestamps
    end
  end
end

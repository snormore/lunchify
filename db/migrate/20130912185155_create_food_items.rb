class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      
      t.string :name
      t.text :description 

      t.timestamps
    end
  end
end

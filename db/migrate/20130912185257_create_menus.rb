class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      
      t.date :day


      t.timestamps
    end
  end
end

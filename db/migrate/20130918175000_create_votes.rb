class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :votes
      t.references :menu_item, index: true

      t.timestamps
    end
  end
end

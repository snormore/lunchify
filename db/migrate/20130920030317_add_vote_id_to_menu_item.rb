class AddVoteIdToMenuItem < ActiveRecord::Migration
  def change
    add_column :menu_items, :vote_id, :integer
  end
end

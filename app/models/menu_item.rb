class MenuItem < ActiveRecord::Base
  belongs_to :menu
  belongs_to :food_item

  belongs_to :vote

  validates :food_item_id, presence: true
  validates :menu_id, presence: true

  def num_votes
    return self.vote
  end
end

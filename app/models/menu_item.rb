class MenuItem < ActiveRecord::Base
  belongs_to :menu
  has_many :food_items
  has_many :votes

  validates :food_item_id, presence: true
  validates :menu_id, presence: true
end

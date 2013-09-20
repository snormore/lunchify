class MenuItem < ActiveRecord::Base
  belongs_to :menu
  belongs_to :food_item

  has_many :votes

  validates :food_item_id, presence: true
  validates :menu_id, presence: true
end

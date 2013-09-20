class Menu < ActiveRecord::Base
  has_many :menu_items
  has_many :food_items, through: :menu_items

  validates :day, uniqueness: true, presence: true
end

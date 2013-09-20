class FoodItem < ActiveRecord::Base
has_many :menu_item
has_many :menus, through: :menu_items

validates :name, uniqueness: true, presence: true
validates :description, uniqueness: true, presence: true

end

class FoodItem < ActiveRecord::Base
belongs_to :menu_item

validates :name, uniqueness: true, presence: true
validates :description, uniqueness: true, presence: true

end

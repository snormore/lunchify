class Menu < ActiveRecord::Base
has_many :menu_items
validates :day, uniqueness: true, presence: true
end

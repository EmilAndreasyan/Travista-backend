class Item < ApplicationRecord
    belongs_to :user
    validates_presence_of :name :size :price :in_stock :color
    validates_inclusion_of :size, :in => ['xs', 's', 'm', 'l', 'xl', 'xxl']
end

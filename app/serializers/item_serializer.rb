class ItemSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :size, :price, :in_stock, :image
  belongs_to :user
end

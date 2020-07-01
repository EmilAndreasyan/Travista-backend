class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :gender, :address
  has_many :items
end

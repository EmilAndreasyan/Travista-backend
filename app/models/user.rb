class User < ApplicationRecord
  has_secure_password
  has_many :items

  validates_presence_of :email :password
  validates :password, length: {in: 6..20}
  validetes_uniqueness_of :email
end

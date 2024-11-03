class Cat < ApplicationRecord
  has_many :cat_ownerships
  has_many :owners, through: :cat_ownerships
  validates :name, presence: true
end

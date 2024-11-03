class Dog < ApplicationRecord
  has_many :dog_ownerships
  has_many :owners, through: :dog_ownerships
  validates :name, presence: true
end

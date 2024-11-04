class Owner < ApplicationRecord
  belongs_to :vet
  has_many :cat_ownerships
  has_many :cats, through: :cat_ownerships
  has_many :dog_ownerships
  has_many :dogs, through: :dog_ownerships
  validates :name, presence: true
  validates :address, presence: true
end

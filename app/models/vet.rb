class Vet < ApplicationRecord
  has_many :owners
  validates :name, presence: true
  validates :address, presence: true
end

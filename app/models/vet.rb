class Vet < ApplicationRecord
  has_many :owners
  validates :name, presence: true
  validates :clinic_address, presence: true
end

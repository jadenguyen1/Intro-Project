class DogOwnership < ApplicationRecord
  belongs_to :dog
  belongs_to :owner
  validates :dog_id, presence: true
  validates :owner_id, presence: true
end

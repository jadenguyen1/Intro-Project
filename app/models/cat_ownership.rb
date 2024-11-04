class CatOwnership < ApplicationRecord
  belongs_to :cat
  belongs_to :owner
  validates :cat_id, presence: true
  validates :owner_id, presence: true
end

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'csv'

CSV.foreach(Rails.root.join('db/cats.csv'), headers: true) do |row|
  Cat.create!(row.to_hash)
end

CSV.foreach(Rails.root.join('db/dogs.csv'), headers: true) do |row|
  Dog.create!(row.to_hash)
end

CSV.foreach(Rails.root.join('db/owners.csv'), headers: true) do |row|
  Owner.create!(row.to_hash)
end

CSV.foreach(Rails.root.join('db/cat_ownerships.csv'), headers: true) do |row|
  CatOwnership.create!(row.to_hash)
end

CSV.foreach(Rails.root.join('db/dog_ownerships.csv'), headers: true) do |row|
  DogOwnership.create!(row.to_hash)
end
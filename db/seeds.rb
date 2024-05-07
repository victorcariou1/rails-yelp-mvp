# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

Restaurant.create([
  { name: "Chez Antoine", address: "123 Rue de Paris, Paris", phone_number: "01 23 45 67 89", category: "french" },
  { name: "La Trattoria", address: "456 Via Roma, Rome", phone_number: "06 78 90 12 34", category: "italian" },
  { name: "Sakura", address: "789 Chuo Street, Tokyo", phone_number: "03 45 67 89 01", category: "japanese" },
  { name: "Dim Sum House", address: "321 Causeway Bay, Hong Kong", phone_number: "02 34 56 78 90", category: "chinese" },
  { name: "Brussels Sprouts", address: "234 Avenue Louise, Brussels", phone_number: "04 56 78 90 12", category: "belgian" }
])

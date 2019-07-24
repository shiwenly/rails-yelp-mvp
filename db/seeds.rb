# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.delete_all if Rails.env.development?

5.times do
  article = Restaurant.new(
    name: Faker::Food.dish,
    address: Faker::Address.full_address,
    phone_number: "#{Faker::PhoneNumber.cell_phone}",
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  article.save
end

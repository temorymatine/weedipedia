# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
feelings = ["hungry", "happy","sleepy","pain free", "creative", "blissful","energetic"]

20.times do 
Weed.create(strain: Faker::Cannabis.strain,
 thc_percentage: Faker::Number.within(range: 1..75),
 lineage: Faker::Cannabis.type,
 feelings: feelings.sample,
 cbd_percentage: Faker::Number.within(range: 1..30),
 terpene: Faker::Cannabis.terpene,
 medical_use: Faker::Cannabis.medical_use,
 brand: Faker::Cannabis.brand
 )

end
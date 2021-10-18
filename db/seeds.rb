# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(
  email: 'admin@admin',
  password: 'testtest'
)

Customer.create!(
  first_name: "test",
  last_name: "test",
  first_name_kana: "test",
  last_name_kana: "test",
  email: 'customer@test1111',
  postal_code: "0001111",
  address: "test",
  phone_number: "00011112222",
  password: 'testtest'
  )
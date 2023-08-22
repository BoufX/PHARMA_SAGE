# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
Pharmacy.destroy_all
Order.destroy_all

user = User.create!(email:"bob@gmail.com", password:"123456")
pharmacy = Pharmacy.create!()

Order.create!(user_id: user, pharmacy_id: pharmacy, name: 'DOLIPRNE 1000mg', price: '25')
Order.create!(name: 'NOVICLIN 100 mg', price: '63')
Order.create!(name: 'UNILUX 370 mg', price: '598')

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Order.destroy_all
User.destroy_all
Pharmacy.destroy_all

User.create!(email:"bob@gmail.com", password:"123456")
Pharmacy.create(name: "Le Wagon Pharmacy", address: "398 Bd Brahim Roudani, Casablanca, Morocco", phone_number: "+212-612-23-45-45")
Pharmacy.create(name: "Abdallah's Pharmacy", address: "Boulevard Bir Anzarane, Casablanca, Morocco", phone_number: "+212-621-74-59-86")
Pharmacy.create(name: "Oussama's Pharmacy", address: "406, Bd Ghandi, Casablanca, Morocco", phone_number: "+212-622-14-78-44")
Pharmacy.create(name: "Oumaima's Pharmacy", address: "279 Bd Abdelmoumen, Casablanca, Morocco", phone_number:"+212-655-87-96-54")


Order.create!(user_id: User.first.id, pharmacy_id: Pharmacy.first.id, name: 'DOLIPRNE 1000mg', price: '25')

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
Pharmacy.destroy_all
pharmacy = Pharmacy.create(name: "Le Wagon Pharmacy", address: "139, Rue Abou Ishak El Marouni", phone_number: "0612234545")
Pharmacy.create(name: "Bouf's Pharmacy", address: "285, Bd Ghandi", phone_number: "06217459867")
Pharmacy.create(name: "La Paix Pharmacy", address: "38 Bd Al Massira Al Khadra", phone_number: "0622147844")
Pharmacy.create(name: "Helmon's Pharmacy", address: "47 Bd Hay Hassani", phone_number:"0655879654")

Order.create!(user_id: user, pharmacy_id: pharmacy, name: 'DOLIPRNE 1000mg', price: '25')
Order.create!(name: 'NOVICLIN 100 mg', price: '63')
Order.create!(name: 'UNILUX 370 mg', price: '598')

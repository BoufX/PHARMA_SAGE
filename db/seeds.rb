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

User.create!(email:"bob@gmail.com", password:"123456")
Pharmacy.create(name: "Le Wagon Pharmacy", address: "139, Rue Abou Ishak El Marouni", phone_number: "0612234545")

=begin
Pharmacy.create(name: "Abdallah's Pharmacy", address: "285, Bd Ghandi", phone_number: "06217459867")
Pharmacy.create(name: "Oussama's Pharmacy", address: "38 Bd Al Massira Al Khadra", phone_number: "0622147844")
Pharmacy.create(name: "Oumaima's Pharmacy", address: "47 Bd Hay Hassani", phone_number:"0655879654")
=end

Order.create!(user_id: User.first.id, pharmacy_id: Pharmacy.first.id, name: 'DOLIPRNE 1000mg', price: '25')

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(email: "marco@123.com", password: "12345678", first_name: "Marco",
    last_name: "Ricci", image_url: "https://avatars.githubusercontent.com/u/65777698?v=4",
    role: "Full Stack Web Developer", company_name: "MammaMia Limited", location: "London")

User.create!(email: "louis@123.com", password: "12345678", first_name: "Louis",
    last_name: "Leslie", image_url: "https://ca.slack-edge.com/T02NE0241-U01K2UZ287J-413c3a4571b1-512",
    role: "Full Stack Shifu", company_name: "Windsor Castle", location: "Paris")

User.create!(email: "ife@123.com", password: "12345678", first_name: "Ife",
    last_name: "Odugbesan", image_url: "https://ca.slack-edge.com/T02NE0241-UD478BM6G-8b49cda00a95-512",
    role: "Frontend Master", company_name: "Le Dragon", location: "Berlin")

User.create!(email: "raeesa@123.com", password: "12345678", first_name: "Raeesa",
    last_name: "Qureshi", image_url: "https://ca.slack-edge.com/T02NE0241-U01BHHMF87R-755eb2936b41-512",
    role: "Full Stack Angel", company_name: "Greenrake Heaven", location: "Milan")

User.create!(email: "phelim@123.com", password: "12345678", first_name: "Phelim",
    last_name: "Dunleavy", image_url: "https://ca.slack-edge.com/T02NE0241-U2JHP75T3-bc41a8100593-512",
    role: "St. Backend Developer", company_name: "Guinness Storehouse", location: "Dublin")

User.create!(email: "jake@123.com", password: "12345678", first_name: "Jake",
    last_name: "Pople", image_url: "https://ca.slack-edge.com/T02NE0241-U02SU3A11UP-d4bef5f0084e-512",
    role: "Junior Software Engineer", company_name: "Hamilton Associate", location: "Amsterdam")

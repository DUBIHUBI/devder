# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database!"
User.destroy_all
puts "Seeding the database!"

User.create!(email: "marco@123.com", password: "12345678", first_name: "Marco",
    last_name: "Ricci", image_url: "https://avatars.githubusercontent.com/u/65777698?v=4",
    role: "Full Stack Web Developer", company_name: "MammaMia Limited", location: "London", gender: "male", student: false, company_type: "Start-up", company_size: 10, funding_stage: "Series-A", hq_location: "London")

User.create!(email: "louis@123.com", password: "12345678", first_name: "Louis",
    last_name: "Leslie", image_url: "https://ca.slack-edge.com/T02NE0241-U01K2UZ287J-413c3a4571b1-512",
    role: "Full Stack Shifu", company_name: "Windsor Castle", location: "Paris", gender: "male", student: false, company_type: "Enterprise", company_size: 5000, funding_stage: "Post-IPO", hq_location: "California")

User.create!(email: "ife@123.com", password: "12345678", first_name: "Ife",
    last_name: "Odugbesan", image_url: "https://ca.slack-edge.com/T02NE0241-UD478BM6G-8b49cda00a95-512",
    role: "Frontend Master", company_name: "Le Dragon", location: "Berlin", gender: "male", student: false, company_type: "Scale-up", company_size: 250, funding_stage: "Series-C", hq_location: "Berlin")

User.create!(email: "raeesa@123.com", password: "12345678", first_name: "Raeesa",
    last_name: "Qureshi", image_url: "https://ca.slack-edge.com/T02NE0241-U01BHHMF87R-755eb2936b41-512",
    role: "Full Stack Angel", company_name: "Greenrake Heaven", location: "Milan", gender: "female", student: false, company_type: "Scale-up", company_size: 500, funding_stage: "Series-D", hq_location: "Rome")

User.create!(email: "phelim@123.com", password: "12345678", first_name: "Phelim",
    last_name: "Dunleavy", image_url: "https://ca.slack-edge.com/T02NE0241-U2JHP75T3-bc41a8100593-512",
    role: "St. Backend Developer", company_name: "Guinness Storehouse", location: "Dublin", gender: "male", student: false, company_type: "Start-up", company_size: 5, funding_stage: "Pre-Seed", hq_location: "Dublin")

User.create!(email: "jake@123.com", password: "12345678", first_name: "Jake",
    last_name: "Pople", image_url: "https://ca.slack-edge.com/T02NE0241-U02SU3A11UP-d4bef5f0084e-512",
    role: "Junior Software Engineer", company_name: "Hamilton Associate", location: "Amsterdam", gender: "male", student: false, company_type: "Scale-up", company_size: 100, funding_stage: "Seed", hq_location: "London")

User.create!(email: "carly@123.com", password: "12345678", first_name: "Carly",
    last_name: "Luo", image_url: "https://ca.slack-edge.com/T02NE0241-U03BP67E9RB-3552484dd4f0-192",
    role: "Junior Fullstack Developer", company_name: "JP Morgan", location: "London", gender: "female", student: false, company_type: "Enterprise", company_size: 1000, funding_stage: "Post-IPO", hq_location: "London")

User.create!(email: "johan@123.com", password: "12345678", first_name: "Johan",
    last_name: "van Meeuwen", image_url: "https://ca.slack-edge.com/T02NE0241-U03BQ1QS003-bf71b0faf5f4-512",
    role: "Front-end Developer", company_name: "Paddle", location: "London", gender: "male", student: false, company_type: "Start-up", company_size: 25, funding_stage: "Series-B", hq_location: "Berlin")

    User.create!(email: "anna@123.com", password: "12345678", first_name: "Anna",
      last_name: "Efthymiadou", image_url: "https://ca.slack-edge.com/T02NE0241-U03BG8BGHM3-1469b40be5b0-512",
      role: "Back-end Developer", company_name: "Gymshark", location: "London", gender: "female", student: false, company_type: "Enterprise", company_size: 2500, funding_stage: "Post-IPO", hq_location: "London")

puts "Finished!"

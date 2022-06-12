# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database!"
User.destroy_all
Meeting.destroy_all
puts "Seeding the database!"

@counter = 0

User.create!(
  email: "marco@123.com",
  password: "12345678",
  first_name: "Marco",
  last_name: "Ricci",
  age: (20..35).to_a.sample,
  image_url: "https://avatars.githubusercontent.com/u/65777698?v=4",
  profile_image:
    RemoveBg.from_url(
      "https://avatars.githubusercontent.com/u/65777698?v=4",
      api_key: ENV['REMOVE_BG_API_KEY'],
    ).save("app/assets/images/no-bg-#{@counter += 1}.png"),
  role: "Full Stack Web Developer",
  company_name: "MammaMia Limited",
  address: "Westminster",
  gender: "male",
  student: false,
  company_type: "Start-up",
  company_size: 10,
  funding_stage: "Series-A",
  hq_location: "London",
  bio: Faker::Quote.famous_last_words
)

User.create!(
  email: "louis@123.com",
  password: "12345678",
  first_name: "Louis",
  last_name: "Leslie",
  age: (20..35).to_a.sample,
  image_url: "https://ca.slack-edge.com/T02NE0241-U01K2UZ287J-413c3a4571b1-512",
  profile_image:
    RemoveBg.from_url(
      "https://ca.slack-edge.com/T02NE0241-U01K2UZ287J-413c3a4571b1-512",
      api_key: ENV['REMOVE_BG_API_KEY'],
    ).save("app/assets/images/no-bg-#{@counter += 1}.png"),
  role: "Full Stack Shifu",
  company_name: "Windsor Castle",
  address: "Southwark", gender: "male",
  student: false, company_type: "Enterprise",
  company_size: 5000,
  funding_stage: "Post-IPO",
  hq_location: "California",
  bio: Faker::Quote.famous_last_words
)

User.create!(
  email: "ife@123.com",
  password: "12345678",
  first_name: "Ife",
  last_name: "Odugbesan",
  age: (20..35).to_a.sample,
  image_url: "https://ca.slack-edge.com/T02NE0241-UD478BM6G-8b49cda00a95-512",
  profile_image:
    RemoveBg.from_url(
      "https://ca.slack-edge.com/T02NE0241-UD478BM6G-8b49cda00a95-512",
      api_key: ENV['REMOVE_BG_API_KEY'],
    ).save("app/assets/images/no-bg-#{@counter += 1}.png"),
  role: "Frontend Master",
  company_name: "Le Dragon",
  address: "Lambeth",
  gender: "male",
  student: false,
  company_type: "Scale-up",
  company_size: 250,
  funding_stage: "Series-C",
  hq_location: "Berlin",
  bio: Faker::Quote.famous_last_words
)

User.create!(
  email: "raeesa@123.com",
  password: "12345678",
  first_name: "Raeesa",
  last_name: "Qureshi",
  age: (20..35).to_a.sample,
  image_url: "https://ca.slack-edge.com/T02NE0241-U01BHHMF87R-755eb2936b41-512",
  profile_image:
    RemoveBg.from_url(
      "https://ca.slack-edge.com/T02NE0241-U01BHHMF87R-755eb2936b41-512",
      api_key: ENV['REMOVE_BG_API_KEY'],
    ).save("app/assets/images/no-bg-#{@counter += 1}.png"),
  role: "Full Stack Angel",
  company_name: "Greenrake Heaven",
  address: "Hackney",
  gender: "female",
  student: false,
  company_type: "Scale-up",
  company_size: 500,
  funding_stage: "Series-D",
  hq_location: "Rome",
  bio: Faker::Quote.famous_last_words
)

User.create!(
  email: "phelim@123.com",
  password: "12345678",
  first_name: "Phelim",
  last_name: "Dunleavy",
  age: (20..35).to_a.sample,
  image_url: "https://ca.slack-edge.com/T02NE0241-U2JHP75T3-bc41a8100593-512",
  profile_image:
    RemoveBg.from_url(
      "https://ca.slack-edge.com/T02NE0241-U2JHP75T3-bc41a8100593-512",
      api_key: ENV['REMOVE_BG_API_KEY'],
    ).save("app/assets/images/no-bg-#{@counter += 1}.png"),
  role: "St. Backend Developer",
  company_name: "Guinness Storehouse",
  address: "Greenwich",
  gender: "male",
  student: false,
  company_type: "Start-up",
  company_size: 5,
  funding_stage: "Pre-Seed",
  hq_location: "Dublin",
  bio: Faker::Quote.famous_last_words
)

User.create!(
  email: "jake@123.com",
  password: "12345678",
  first_name: "Jake",
  last_name: "Pople",
  age: (20..35).to_a.sample,
  image_url: "https://ca.slack-edge.com/T02NE0241-U02SU3A11UP-d4bef5f0084e-512",
  profile_image:
    RemoveBg.from_url(
      "https://ca.slack-edge.com/T02NE0241-U02SU3A11UP-d4bef5f0084e-512",
      api_key: ENV['REMOVE_BG_API_KEY'],
    ).save("app/assets/images/no-bg-#{@counter += 1}.png"),
  role: "Junior Software Engineer",
  company_name: "Hamilton Associate",
  address: "Islington",
  gender: "male",
  student: false,
  company_type: "Scale-up",
  company_size: 100,
  funding_stage: "Seed",
  hq_location: "London",
  bio: Faker::Quote.famous_last_words
)

User.create!(
  email: "andrew@123.com",
  password: "12345678",
  first_name: "Andrew",
  last_name: "Moffat",
  age: (20..35).to_a.sample,
  image_url: "https://ca.slack-edge.com/T02NE0241-U033H6RMULA-455e860d3a79-192",
  profile_image:
    RemoveBg.from_url(
      "https://ca.slack-edge.com/T02NE0241-U033H6RMULA-455e860d3a79-192",
      api_key: ENV['REMOVE_BG_API_KEY'],
    ).save("app/assets/images/no-bg-#{@counter += 1}.png"),
  role: "General Manager",
  company_name: "Le Wagon",
  address: "Hackney",
  gender: "male",
  student: false,
  company_type: "Enterprise",
  company_size: 1000,
  funding_stage: "Post-IPO",
  hq_location: "London",
  bio: Faker::Quote.famous_last_words
)

User.create!(
  email: "boris@123.com",
  password: "12345678",
  first_name: "Boris",
  last_name: "Paillard",
  age: (20..35).to_a.sample,
  image_url: "https://ca.slack-edge.com/T02NE0241-U02NE1NL9-40998e0a5c92-192",
    profile_image:
    RemoveBg.from_url(
      "https://ca.slack-edge.com/T02NE0241-U02NE1NL9-40998e0a5c92-192",
      api_key: ENV['REMOVE_BG_API_KEY'],
    ).save("app/assets/images/no-bg-#{@counter += 1}.png"),
  role: "Founder",
  company_name: "Le Wagon",
  address: "Hackney",
  gender: "male",
  student: false,
  company_type: "Enterprise",
  company_size: 25,
  funding_stage: "Series-B",
  hq_location: "London",
  bio: Faker::Quote.famous_last_words
)

User.create!(
  email: "seb@123.com",
  password: "12345678",
  first_name: "Seb",
  last_name: "Saunier",
  age: (20..35).to_a.sample,
  image_url: "https://ca.slack-edge.com/T02NE0241-U02NE0247-6fe39830661f-192",
  profile_image:
    RemoveBg.from_url(
      "https://ca.slack-edge.com/T02NE0241-U02NE0247-6fe39830661f-192",
      api_key: ENV['REMOVE_BG_API_KEY'],
    ).save("app/assets/images/no-bg-#{@counter += 1}.png"),
  role: "Back-end Developer",
  company_name: "Le Wagon",
  address: "Hackney",
  gender: "male",
  student: false,
  company_type: "Enterprise",
  company_size: 2500,
  funding_stage: "Post-IPO",
  hq_location: "London",
  bio: Faker::Quote.famous_last_words
)

User.create!(
  email: "carly@123.com",
  password: "12345678",
  first_name: "Carly",
  last_name: "Yuo",
  age: (20..35).to_a.sample,
  image_url: "https://ca.slack-edge.com/T02NE0241-U03BP67E9RB-3552484dd4f0-192",
  profile_image:
    RemoveBg.from_url(
      "https://ca.slack-edge.com/T02NE0241-U03BP67E9RB-3552484dd4f0-192",
      api_key: ENV['REMOVE_BG_API_KEY'],
    ).save("app/assets/images/no-bg-#{@counter += 1}.png"),
  desired_role: "Front-end Developer",
  address: "Woolwich",
  gender: "female",
  student: true,
  bio: Faker::Quote.famous_last_words
)

User.create!(
  email: "johan@123.com",
  password: "12345678",
  first_name: "Johan",
  last_name: "van Meeuwen",
  age: (20..35).to_a.sample,
  image_url: "https://ca.slack-edge.com/T02NE0241-U03BQ1QS003-bf71b0faf5f4-512",
  profile_image:
    RemoveBg.from_url(
      "https://ca.slack-edge.com/T02NE0241-U03BQ1QS003-bf71b0faf5f4-512",
      api_key: ENV['REMOVE_BG_API_KEY'],
    ).save("app/assets/images/no-bg-#{@counter += 1}.png"),
  desired_role: "Front-end Developer",
  address: "Battersea",
  gender: "male",
  student: true,
  bio: Faker::Quote.famous_last_words
)

User.create!(
  email: "anna@123.com",
  password: "12345678",
  first_name: "Anna",
  last_name: "Efthymiadou",
  age: (20..35).to_a.sample,
  image_url: "https://ca.slack-edge.com/T02NE0241-U03BG8BGHM3-1469b40be5b0-512",
  profile_image:
    RemoveBg.from_url(
      "https://ca.slack-edge.com/T02NE0241-U03BG8BGHM3-1469b40be5b0-512",
      api_key: ENV['REMOVE_BG_API_KEY'],
    ).save("app/assets/images/no-bg-#{@counter += 1}.png"),
  desired_role: "Back-end Developer",
  address: "Poplar",
  gender: "female",
  student: true,
  bio: Faker::Quote.famous_last_words
)

puts "Finished!"

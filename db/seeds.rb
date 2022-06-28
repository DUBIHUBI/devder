# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database!"
Meeting.destroy_all
Review.destroy_all
Chatroom.destroy_all
Favourite.destroy_all
Message.destroy_all
Language.destroy_all
User.destroy_all

puts "Seeding the database!"

@counter = 0

# User.create!(
#   email: "marco@123.com",
#   password: "12345678",
#   first_name: "Marco",
#   last_name: "Ricci",
#   age: (20..35).to_a.sample,
#   image_url: "https://avatars.githubusercontent.com/u/65777698?v=4",
#   profile_image: "app/assets/images/profile-img-no-bg-#{@counter += 1}.png",
#     # RemoveBg.from_url(
#     #   "https://avatars.githubusercontent.com/u/65777698?v=4",
#     #   api_key: ENV['REMOVE_BG_API_KEY'],
#     # ).save("app/assets/images/profile-img-no-bg-#{@counter += 1}.png"),
#   role: "Front-End Web Developer",
#   company_name: "Huel",
#   address: "Westminster",
#   gender: "male",
#   student: false,
#   company_type: "Scale-up",
#   company_size: 330,
#   funding_stage: "Series-C",
#   hq_location: "London",
#   bio: "I am a full stack web developer with a vast array of knowledge in many different fron end and back end languages, responsive frameworks, databases, and best coding practices.
#   My objective is simply to be the best web developer that I can be and to contribute to the technology industry everything that I know 💪🏽"
# )

# User.create!(
#   email: "louis@123.com",
#   password: "12345678",
#   first_name: "Louis",
#   last_name: "Leslie",
#   age: (20..35).to_a.sample,
#   image_url: "https://ca.slack-edge.com/T02NE0241-U01K2UZ287J-413c3a4571b1-512",
#   profile_image: "app/assets/images/profile-img-no-bg-#{@counter += 1}.png",
#     # RemoveBg.from_url(
#     #   "https://ca.slack-edge.com/T02NE0241-U01K2UZ287J-413c3a4571b1-512",
#     #   api_key: ENV['REMOVE_BG_API_KEY'],
#     # ).save("app/assets/images/profile-img-no-bg-#{@counter += 1}.png"),
#   role: "Back-end Developer",
#   company_name: "Facebook",
#   address: "Bermondsey", gender: "male",
#   student: false, company_type: "Enterprise",
#   company_size: 80000,
#   funding_stage: "Post-IPO",
#   hq_location: "California",
#   bio: Faker::Quote.famous_last_words
# )

# User.create!(
#   email: "ife@123.com",
#   password: "12345678",
#   first_name: "Ife",
#   last_name: "Odugbesan",
#   age: (20..35).to_a.sample,
#   image_url: "https://ca.slack-edge.com/T02NE0241-UD478BM6G-8b49cda00a95-512",
#   profile_image: "app/assets/images/profile-img-no-bg-#{@counter += 1}.png",
#     # RemoveBg.from_url(
#     #   "https://ca.slack-edge.com/T02NE0241-UD478BM6G-8b49cda00a95-512",
#     #   api_key: ENV['REMOVE_BG_API_KEY'],
#     # ).save("app/assets/images/profile-img-no-bg-#{@counter += 1}.png"),
#   role: "Front-End Web Developer",
#   company_name: "Ife Odugbesan",
#   address: "Shoreditch",
#   gender: "male",
#   student: false,
#   company_type: "Scale-up",
#   company_size: 1,
#   funding_stage: "Pre-Seed",
#   hq_location: "London",
#   bio: Faker::Quote.famous_last_words
# )

# User.create!(
#   email: "raeesa@123.com",
#   password: "12345678",
#   first_name: "Raeesa",
#   last_name: "Qureshi",
#   age: (20..35).to_a.sample,
#   image_url: "https://ca.slack-edge.com/T02NE0241-U01BHHMF87R-755eb2936b41-512",
#   profile_image: "app/assets/images/profile-img-no-bg-#{@counter += 1}.png",
#     # RemoveBg.from_url(
#     #   "https://ca.slack-edge.com/T02NE0241-U01BHHMF87R-755eb2936b41-512",
#     #   api_key: ENV['REMOVE_BG_API_KEY'],
#     # ).save("app/assets/images/profile-img-no-bg-#{@counter += 1}.png"),
#   role: "Front-End Web Developer",
#   company_name: "Thought Machine",
#   address: "Hackney",
#   gender: "female",
#   student: false,
#   company_type: "Scale-up",
#   company_size: 500,
#   funding_stage: "Series-D",
#   hq_location: "London",
#   bio: Faker::Quote.famous_last_words
# )

# User.create!(
#   email: "phelim@123.com",
#   password: "12345678",
#   first_name: "Phelim",
#   last_name: "Dunleavy",
#   age: (20..35).to_a.sample,
#   image_url: "https://ca.slack-edge.com/T02NE0241-U2JHP75T3-bc41a8100593-512",
#   profile_image: "app/assets/images/profile-img-no-bg-#{@counter += 1}.png",
#     # RemoveBg.from_url(
#     #   "https://ca.slack-edge.com/T02NE0241-U2JHP75T3-bc41a8100593-512",
#     #   api_key: ENV['REMOVE_BG_API_KEY'],
#     # ).save("app/assets/images/profile-img-no-bg-#{@counter += 1}.png"),
#   role: "Software Engineer",
#   company_name: "Apple",
#   address: "Greenwich",
#   gender: "male",
#   student: false,
#   company_type: "Enterprice",
#   company_size: 260000,
#   funding_stage: "Post-IPO",
#   hq_location: "California",
#   bio: Faker::Quote.famous_last_words
# )

# User.create!(
#   email: "jake@123.com",
#   password: "12345678",
#   first_name: "Jake",
#   last_name: "Pople",
#   age: (20..35).to_a.sample,
#   image_url: "https://ca.slack-edge.com/T02NE0241-U02SU3A11UP-d4bef5f0084e-512",
#   profile_image: "app/assets/images/profile-img-no-bg-#{@counter += 1}.png",
#     # RemoveBg.from_url(
#     #   "https://ca.slack-edge.com/T02NE0241-U02SU3A11UP-d4bef5f0084e-512",
#     #   api_key: ENV['REMOVE_BG_API_KEY'],
#     # ).save("app/assets/images/profile-img-no-bg-#{@counter += 1}.png"),
#   role: "Full Stack Web Developer",
#   company_name: "Paddle",
#   address: "Islington",
#   gender: "male",
#   student: false,
#   company_type: "Scale-up",
#   company_size: 287,
#   funding_stage: "Series-D",
#   hq_location: "London",
#   bio: Faker::Quote.famous_last_words
# )

# User.create!(
#   email: "andrew@123.com",
#   password: "12345678",
#   first_name: "Andrew",
#   last_name: "Moffat",
#   age: (20..35).to_a.sample,
#   image_url: "https://ca.slack-edge.com/T02NE0241-U033H6RMULA-455e860d3a79-192",
#   profile_image: "app/assets/images/profile-img-no-bg-#{@counter += 1}.png",
#     # RemoveBg.from_url(
#     #   "https://ca.slack-edge.com/T02NE0241-U033H6RMULA-455e860d3a79-192",
#     #   api_key: ENV['REMOVE_BG_API_KEY'],
#     # ).save("app/assets/images/profile-img-no-bg-#{@counter += 1}.png"),
#   role: "General Manager",
#   company_name: "Le Wagon",
#   address: "Hackney",
#   gender: "male",
#   student: false,
#   company_type: "Enterprise",
#   company_size: 1000,
#   funding_stage: "Series-A",
#   hq_location: "Paris",
#   bio: Faker::Quote.famous_last_words
# )

# User.create!(
#   email: "boris@123.com",
#   password: "12345678",
#   first_name: "Boris",
#   last_name: "Paillard",
#   age: (20..35).to_a.sample,
#   image_url: "https://ca.slack-edge.com/T02NE0241-U02NE1NL9-40998e0a5c92-192",
#   profile_image: "app/assets/images/profile-img-no-bg-#{@counter += 1}.png",
#     # RemoveBg.from_url(
#     #   "https://ca.slack-edge.com/T02NE0241-U02NE1NL9-40998e0a5c92-192",
#     #   api_key: ENV['REMOVE_BG_API_KEY'],
#     # ).save("app/assets/images/profile-img-no-bg-#{@counter += 1}.png"),
#   role: "CEO & Founder",
#   company_name: "Le Wagon",
#   address: "Hackney",
#   gender: "male",
#   student: false,
#   company_type: "Enterprise",
#   company_size: 1000,
#   funding_stage: "Series-A",
#   hq_location: "Paris",
#   bio: Faker::Quote.famous_last_words
# )

# User.create!(
#   email: "seb@123.com",
#   password: "12345678",
#   first_name: "Seb",
#   last_name: "Saunier",
#   age: (20..35).to_a.sample,
#   image_url: "https://ca.slack-edge.com/T02NE0241-U02NE0247-6fe39830661f-192",
#   profile_image: "app/assets/images/profile-img-no-bg-#{@counter += 1}.png",
#     # RemoveBg.from_url(
#     #   "https://ca.slack-edge.com/T02NE0241-U02NE0247-6fe39830661f-192",
#     #   api_key: ENV['REMOVE_BG_API_KEY'],
#     # ).save("app/assets/images/profile-img-no-bg-#{@counter += 1}.png"),
#   role: "CTO",
#   company_name: "Le Wagon",
#   address: "Hackney",
#   gender: "male",
#   student: false,
#   company_type: "Enterprise",
#   company_size: 1000,
#   funding_stage: "Series-A",
#   hq_location: "Paris",
#   bio: Faker::Quote.famous_last_words
# )

# User.create!(
#   email: "carly@123.com",
#   password: "12345678",
#   first_name: "Carly",
#   last_name: "Yuo",
#   age: (20..35).to_a.sample,
#   image_url: "https://ca.slack-edge.com/T02NE0241-U03BP67E9RB-3552484dd4f0-192",
#   profile_image: "app/assets/images/profile-img-no-bg-#{@counter += 1}.png",
#     # RemoveBg.from_url(
#     #   "https://ca.slack-edge.com/T02NE0241-U03BP67E9RB-3552484dd4f0-192",
#     #   api_key: ENV['REMOVE_BG_API_KEY'],
#     # ).save("app/assets/images/profile-img-no-bg-#{@counter += 1}.png"),
#   desired_role: "Front-end Developer",
#   address: "Woolwich",
#   gender: "female",
#   student: true,
#   bio: Faker::Quote.famous_last_words
# )

# User.create!(
#   email: "johan@123.com",
#   password: "12345678",
#   first_name: "Johan",
#   last_name: "van Meeuwen",
#   age: (20..35).to_a.sample,
#   image_url: "https://ca.slack-edge.com/T02NE0241-U03BQ1QS003-bf71b0faf5f4-512",
#   profile_image: "app/assets/images/profile-img-no-bg-#{@counter += 1}.png",
#     # RemoveBg.from_url(
#     #   "https://ca.slack-edge.com/T02NE0241-U03BQ1QS003-bf71b0faf5f4-512",
#     #   api_key: ENV['REMOVE_BG_API_KEY'],
#     # ).save("app/assets/images/profile-img-no-bg-#{@counter += 1}.png"),
#   desired_role: "Front-end Developer",
#   address: "Battersea",
#   gender: "male",
#   student: true,
#   bio: "Hey👋🏽! Great to be on Devder! I'm looking to speak to frontend engineers, ideally in well-funded scale-up companies.
#   Looking to get a job ASAP!"
# )

# User.create!(
#   email: "anna@123.com",
#   password: "12345678",
#   first_name: "Anna",
#   last_name: "Efthymiadou",
#   age: (20..35).to_a.sample,
#   image_url: "https://ca.slack-edge.com/T02NE0241-U03BG8BGHM3-1469b40be5b0-512",
#   profile_image: "app/assets/images/profile-img-no-bg-#{@counter += 1}.png",
#     # RemoveBg.from_url(
#     #   "https://ca.slack-edge.com/T02NE0241-U03BG8BGHM3-1469b40be5b0-512",
#     #   api_key: ENV['REMOVE_BG_API_KEY'],
#     # ).save("app/assets/images/profile-img-no-bg-#{@counter += 1}.png"),
#   desired_role: "Back-end Developer",
#   address: "Poplar",
#   gender: "female",
#   student: true,
#   bio: Faker::Quote.famous_last_words
# )

# User.create!(
#   email: "jeff@123.com",
#   password: "12345678",
#   first_name: "Jeff",
#   last_name: "Bezos",
#   age: (20..35).to_a.sample,
#   image_url: "https://pbs.twimg.com/profile_images/669103856106668033/UF3cgUk4_400x400.jpg",
#   profile_image: "app/assets/images/profile-img-no-bg-#{@counter += 1}.png",
#     # RemoveBg.from_url(
#     #   "https://ca.slack-edge.com/T02NE0241-U02NE0247-6fe39830661f-192",
#     #   api_key: ENV['REMOVE_BG_API_KEY'],
#     # ).save("app/assets/images/profile-img-no-bg-#{@counter += 1}.png"),
#   role: "Front-End Web Developer",
#   company_name: "Amazon",
#   address: "Greenwich",
#   gender: "male",
#   student: false,
#   company_type: "Enterprise",
#   company_size: 1000,
#   funding_stage: "Post-IPO",
#   hq_location: "California",
#   bio: Faker::Quote.famous_last_words
# )

# User.create!(
#   email: "larry@123.com",
#   password: "12345678",
#   first_name: "Larry",
#   last_name: "Page",
#   age: (20..35).to_a.sample,
#   image_url: "https://pbs.twimg.com/profile_images/1231038234/page_400x400.jpg",
#   profile_image: "app/assets/images/profile-img-no-bg-#{@counter += 1}.png",
#     # RemoveBg.from_url(
#     #   "https://ca.slack-edge.com/T02NE0241-U02NE0247-6fe39830661f-192",
#     #   api_key: ENV['REMOVE_BG_API_KEY'],
#     # ).save("app/assets/images/profile-img-no-bg-#{@counter += 1}.png"),
#   role: "Front-End Web Developer",
#   company_name: "Google",
#   address: "Bermondsey",
#   gender: "male",
#   student: false,
#   company_type: "Scale-up",
#   company_size: 10000,
#   funding_stage: "Series-C",
#   hq_location: "California",
#   bio: Faker::Quote.famous_last_words
# )

# User.create!(
#   email: "bill@123.com",
#   password: "12345678",
#   first_name: "Bill",
#   last_name: "Gates",
#   age: (20..35).to_a.sample,
#   image_url: "https://media-exp1.licdn.com/dms/image/C4D03AQHqRRhVsnaziA/profile-displayphoto-shrink_800_800/0/1626063510328?e=1660780800&v=beta&t=ybWYvo-C_9YBQcfsN-rRAm1HSThxj9piEUMHqY5r2rA",
#   profile_image: "app/assets/images/profile-img-no-bg-#{@counter += 1}.png",
#     # RemoveBg.from_url(
#     #   "https://ca.slack-edge.com/T02NE0241-U02NE0247-6fe39830661f-192",
#     #   api_key: ENV['REMOVE_BG_API_KEY'],
#     # ).save("app/assets/images/profile-img-no-bg-#{@counter += 1}.png"),
#   role: "CEO",
#   company_name: "Microsoft",
#   address: "Battersea",
#   gender: "male",
#   student: false,
#   company_type: "Enterprise",
#   company_size: 100000,
#   funding_stage: "Post-IPO",
#   hq_location: "California",
#   bio: Faker::Quote.famous_last_words
# )

languages = ["Ruby", "Ruby on Rails", "Python", "Java", "PHP", "C#", "C++", "MySQL", "PostgreSQL", "Redis", "Oracle", "JavaScript", "TypeScript", "React", "Vue.js", "Angular", "HTML", "CSS", "Sass", "Bootstrap"]

languages.each do |language|
  Language.create!(title: language)
end

puts "Finished!"

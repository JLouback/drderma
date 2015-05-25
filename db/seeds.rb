# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             crm:   "123456",
             dermatologist: "true",
             active: "false")


fake_crm = 10003

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  crm = fake_crm + 5
  fake_crm = fake_crm + 5
  active = "true"
  if crm % 4 == 0 
    active = "false"
  end
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               crm: crm,
               dermatologist: "true",
               active: active)
end
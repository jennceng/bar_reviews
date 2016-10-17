# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Bar.create(name: "Paddy's Pub", address: "Philadelphia", hours_of_operation: "whenever Charlie turns on the 'coors' light")
Bar.create(name: "Suds", address: "Also Philly")
Bar.create(name: "Phoenix Landing", address: "Central Square", cover_charge: "10 bucks after 10pm")
Bar.create(name: "Backbar", address: "union square discreet alley", cover_charge: "none")

Bar.all.each do |bar|
  ratings = (1..5).to_a
  5.times do
    Review.create(bar: bar, rating: ratings.sample, body: Faker::Hipster.paragraph(2))
  end
end
